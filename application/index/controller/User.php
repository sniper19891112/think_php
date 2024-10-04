<?php
namespace app\index\controller;

use app\admin\service\CaptchaService;
use library\Controller;
use think\Db;
use think\facade\Cookie;

/**
 * 登录控制器
 */
class User extends Base
{

    protected $table = 'xy_users';

    /**
     * 空操作 用于显示错误页面
     */
    public function _empty()
    {
        return $this->fetch();
    }

    //用户登录页面
    public function login()
    {
        if (session('user_id')) {
            $this->redirect('index/home');
        }
        return $this->fetch();
    }

    //用户登录接口
    public function do_login()
    {
        $email = input('post.email/s', '');

        $num = db($this->table)->where(['email' => $email])->count();
        if (!$num) {
            return json(['code' => 1, 'info' => lang('账号不存在')]);
        }

        $pwd = input('post.pwd/s', '');
        $keep = input('post.keep/b', false);
        $remember_me = input('post.remember_me/b', false);

        $userinfo = Db::table($this->table)->field('id,pwd,salt,pwd_error_num,allow_login_time,status,login_status,headpic')->where('email', $email)->find();
        if (!$userinfo) {
            return json(['code' => 1, 'info' => lang('用户不存在')]);
        }

        if ($userinfo['status'] != 1) {
            return json(['code' => 1, 'info' => lang('用户已被禁用')]);
        }

        if ($userinfo['allow_login_time'] && ($userinfo['allow_login_time'] > time()) && ($userinfo['pwd_error_num'] > config('pwd_error_num'))) {
            return ['code' => 1, 'info' => lang('密码连续错误次数太多，请') . config('allow_login_min') . lang('分钟后再试')];
        }

        if ($userinfo['pwd'] != sha1($pwd . $userinfo['salt'] . config('pwd_str'))) {
            Db::table($this->table)->where('id', $userinfo['id'])->update(['pwd_error_num' => Db::raw('pwd_error_num+1'), 'allow_login_time' => (time() + (config('allow_login_min') * 60))]);
            return json(['code' => 1, 'info' => lang('密码错误')]);
        }

        $ip = $this->get_real_ip();
        Db::table($this->table)->where('id', $userinfo['id'])->update(['pwd_error_num' => 0, 'allow_login_time' => 0, 'login_status' => 1, 'ip' => $ip, 'activetime' => time()]);
        session('user_id', $userinfo['id']);
        session('avatar', $userinfo['headpic']);

        if ($remember_me) {
            cookie('username', $email);
            cookie('pwd', $pwd);
        }

        if ($keep) {
            cookie('user_id', $userinfo['id']);
            cookie('username', $email);
            cookie('pwd', $pwd);
        }
        //检测自动升级
        $result = model('admin/Users')->auto_check_up_vip($userinfo['id']);
        // return json($result);
        //提现降低等级检测
        // model('admin/Users')->auto_check_down_vip($userinfo['id']);
        return json(['code' => 0, 'info' => lang('登录成功')]);
    }
    public function get_real_ip()
    {
        $ip = false;
        //客户端IP 或 NONE
        if (!empty($_SERVER["HTTP_CLIENT_IP"])) {
            $ip = $_SERVER["HTTP_CLIENT_IP"];
        }
        //多重代理服务器下的客户端真实IP地址（可能伪造）,如果没有使用代理，此字段为空
        if (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            $ips = explode(", ", $_SERVER['HTTP_X_FORWARDED_FOR']);
            if ($ip) {
                array_unshift($ips, $ip);
                $ip = false;
            }
            for ($i = 0; $i < count($ips); $i++) {
                if (!preg_match("/^(10|172\.16|192\.168)\./", $ips[$i])) {
                    $ip = $ips[$i];
                    break;
                }
            }
        }
        //客户端IP 或 (最后一个)代理服务器 IP
        return ($ip ? $ip : $_SERVER['REMOTE_ADDR']);

    }
    /**
     * 用户注册接口
     */
    public function do_register()
    {
        $email = input('post.email/s', '');
        $pwd = input('post.pwd/s', '');
        $verify_code = input('post.verify_code/s', '');
        $invite_code = input('post.invite_code/s', ''); //邀请码

        // $session_code = session('verify_code');
        // if ($session_code != $verify_code) {
        //     return json(['code' => 1, 'info' => lang('邮箱验证码错误')]);
        // }

        $res = db('xy_verify_msg')->field('addtime,tel')->where(['tel' => $email])->find();
        if ($res && (($res['addtime'] + 60) < time())) {
            return json(['code' => 1, 'info' => lang('验证码已过期')]);
        }

        if (sysconf('isopeninvitecode')) {
            if (!$invite_code) {
                return json(['code' => 1, 'info' => lang('邀请码不能为空')]);
            }
        }
        $pid = 0;
        if ($invite_code) {
            $parentinfo = Db::table($this->table)->field('id,status')->where('invite_code', $invite_code)->find();
            if (!$parentinfo) {
                return json(['code' => 1, 'info' => lang('邀请码不存在')]);
            }

            if ($parentinfo['status'] != 1) {
                return json(['code' => 1, 'info' => lang('该推荐用户已被禁用')]);
            }

            $pid = $parentinfo['id'];
        }

        $res = model('admin/Users')->add_users_email('', '', $email, $pwd, $pid, '', '');
        session('verify_code', null);
        return json($res);
    }

    public function logout()
    {
        \Session::delete('user_id');
        $this->redirect('login');
    }

    public function forgot_password()
    {
        $this->captcha = new CaptchaService();
        return $this->fetch('forgot_password');
    }

    public function password_reset()
    {
        if (!session("email")) {
            // $this->captcha = new CaptchaService();
            // return $this->fetch('forgot_password');
            $this->forgot_password();
        }
        $this->email = session("email");
        return $this->fetch();
    }

    public function do_password_reset()
    {
        if (!request()->isPost()) {
            return json(['code' => 1, 'info' => lang('错误请求')]);
        }

        $pwd = input('post.pwd/s', '');
        $verify_code = input('post.verify_code/d', 0);
        if (config('app.verify')) {
            $verify_msg = db('xy_verify_msg')->field('msg,addtime')->where(['tel' => session("email"), 'type' => 2])->find();
            if (!$verify_msg) {
                return json(['code' => 1, 'info' => lang('验证码不存在')]);
            }

            if ($verify_code != $verify_msg['msg']) {
                return json(['code' => 1, 'info' => lang('验证码错误')]);
            }
    
            $res = db('xy_verify_msg')->field('addtime,tel')->where(['tel' => session("email")])->find();
            if ($res && (($res['addtime'] + 60) < time())) {
                return json(['code' => 1, 'info' => lang('验证码已过期')]);
            }

            if (($verify_msg['addtime'] + (config('app.zhangjun_sms.min') * 60)) < time()) {
                return json(['code' => 1, 'info' => lang('验证码已失效')]);
            }

        }
        $res = model('admin/Users')->reset_pwd(session("email"), $pwd);
        if ($res['code'] == 0) session("email", null);
        return json($res);
    }

    public function register()
    {

        $param = \Request::param(true);
        $lang = isset($param[3]) ? trim($param[3]) : '';
        $this->invite_code = isset($param[1]) ? trim($param[1]) : '';
        if ($lang) {
            switch ($lang) {
                case 'en-us':
                    cookie('think_var', 'en-us', time() + 3600 * 24);
                    break;
                case 'zh-cn':
                    cookie('think_var', 'zh-cn', time() + 3600 * 24);
                    break;
                default:
                    cookie('think_var', 'en-us', time() + 3600 * 24);
                    break;
            }
            $url = SITE_URL . url('@index/user/register/invite_code/' . $this->invite_code);
            $this->redirect($url);
        }
        $this->captcha = new CaptchaService();
        $color = sysconf('app_color');
        // if ($color) {
        //     return $this->fetch('register-' . $color);
        // } else {
        //     return $this->fetch('register-blue');
        // }
        return $this->fetch('register');
    }
    public function updateactivetime()
    {
        $id = session('user_id');
        Db::table($this->table)->where('id', $id)->update(['activetime' => time()]);
        return 'sucess';
    }

    public function app()
    {
        return $this->fetch();
    }

    public function test()
    {
        $can_vip_info = model('admin/Users')->can_vip_info(session('user_id'));
        print_r($can_vip_info);
        $can_vip_info = model('admin/Users')->auto_check_down_vip(session('user_id'));
    }
}
