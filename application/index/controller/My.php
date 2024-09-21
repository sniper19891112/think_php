<?php

namespace app\index\controller;

use library\File;
use think\Controller;
use think\Request;

class My extends Base
{
    protected $msg = ['__token__' => '请不要重复提交'];
    /**
     * 首页
     */
    public function index()
    {
        $uid = session('user_id');

        if (!$uid && request()->isPost()) {
            $this->error(lang('请先登录'));
        }
        if (!$uid) {
            $this->redirect('User/login');
        }
        $this->select = "my";
        $user = db('xy_users')->field('username, tel, headpic, balance, level')->find($uid);
        $this->user = $user;
        return $this->fetch();
    }

    public function wallet()
    {
        $uid = session('user_id');
        if (!$uid && request()->isPost()) {
            $this->error(lang('请先登录'));
        }
        if (!$uid) {
            $this->redirect('User/login');
        }
        $user = db("xy_users")->where("id", $uid)->find();
        $this->balance = $user["balance"];
        $itemsPerPage = 10;
        $logs = db("xy_balance_log")->where("uid", $uid)->paginate($itemsPerPage);
        $this->assign('logs', $logs);
        $this->assign('pagination', $logs->render());
        return $this->fetch();
    }

    public function top_up()
    {
        $uid = session('user_id');
        if (!$uid && request()->isPost()) {
            $this->error(lang('请先登录'));
        }
        if (!$uid) {
            $this->redirect('User/login');
        }
        $wallet = input('get.wallet/s', '');
        $this->address = sysconf($wallet . "_address");
        return $this->fetch("top_up_" . $wallet);
    }

    public function withdraw()
    {
        $uid = session('user_id');
        if (!$uid && request()->isPost()) {
            $this->error(lang('请先登录'));
        }
        if (!$uid) {
            $this->redirect('User/login');
        }
        $wallet = input('get.wallet/s', '');
        $this->type = $wallet == "trc20" ? "trc" : "erc";
        return $this->fetch();
    }

    public function earning()
    {
        $uid = session('user_id');
        if (!$uid && request()->isPost()) {
            $this->error(lang('请先登录'));
        }
        if (!$uid) {
            $this->redirect('User/login');
        }
        $this->earning_balance = db("xy_balance_log")->where("uid", $uid)->where('type', 'in', [3, 6])->sum('num');
        $itemsPerPage = 10;
        $logs = db("xy_balance_log")->where("uid", $uid)->where('type', 'in', [3, 6])->paginate($itemsPerPage);
        $this->assign('logs', $logs);
        $this->assign('pagination', $logs->render());
        return $this->fetch();
    }

    //邀请界面
    public function invite()
    {
        $uid = session('user_id');
        $this->assign('pic', '/upload/qrcode/user/' . ($uid % 20) . '/' . $uid . '.png');
        $user = db('xy_users')->find($uid);
        if (cookie('think_var')) {
            $url = SITE_URL . url('@index/user/register/invite_code/' . $user['invite_code'] . '/lang/' . cookie('think_var'));
        } else {
            $url = SITE_URL . url('@index/user/register/invite_code/' . $user['invite_code']);
        }
        $this->assign('url', $url);
        $this->assign('invite_code', $user['invite_code']);
        return $this->fetch();
    }

    public function team()
    {
        $uid = session('user_id');
        if (!$uid && request()->isPost()) {
            $this->error(lang('请先登录'));
        }
        if (!$uid) {
            $this->redirect('User/login');
        }
        $uid = session('user_id');

        $where = [];
        $this->level = $level = input('get.level/d', 1);
        $this->uinfo = db('xy_users')->where('id', $uid)->find();

        //计算五级团队余额
        $uidAlls5 = model('admin/Users')->child_user($uid, 5, 1);
        $uidAlls5 ? $whereAll[] = ['id', 'in', $uidAlls5] : $whereAll[] = ['id', 'in', [-1]];
        $uidAlls5 ? $whereAll2[] = ['uid', 'in', $uidAlls5] : $whereAll2[] = ['id', 'in', [-1]];
        $this->total_balance = db('xy_users')->where($whereAll)->sum('balance');
        $this->total_deposit = db('xy_recharge')->where($whereAll2)->where('status', 2)->sum('num');
        $this->total_withdraw = db('xy_deposit')->where($whereAll2)->where('status', 2)->sum('num');
        $this->total_flow = db('xy_balance_log')->where($whereAll2)->sum('num');
        $this->total_income = db('xy_balance_log')->where($whereAll2)->where("type", "in", [3, 6])->sum('num');
        $this->order_quantity = db('xy_convey')->where('status', 7)->where($whereAll2)->sum('num');

        $uidsAll = model('admin/Users')->child_user($uid, 5, 1);
        $this->total_people = count($uidsAll);

        $itemsPerPage = 10;
        $uids5 = model('admin/Users')->child_user($uid, $level, 0);
        $uids5 ? $where[] = ['u.id', 'in', $uids5] : $where[] = ['u.id', 'in', [-1]];
        $this->list = db('xy_users')->alias('u')
            ->where($where)->order('id desc')->paginate($itemsPerPage);
        $this->user = db('xy_users')->find($uid);
        $this->assign('pagination', $this->list->render());
        return $this->fetch();
    }

    public function delivery_address()
    {
        $uid = session('user_id');
        if (!$uid) {
            $this->redirect('User/login');
        }
        if (request()->isPost()) {
            $name = input("post.name");
            $tel = input("post.tel");
            $address = input("post.address");
            $data = [
                "uid" => $uid,
                "name" => $name,
                "tel" => $tel,
                "area" => "",
                "address" => $address,
                "is_default" => 0,
                "addtime" => time(),
            ];
            $item = db("xy_member_address")->where("uid", $uid)->find();
            if ($item) {
                $result = db("xy_member_address")->where("uid", $uid)->update($data);
            } else {
                $result = db("xy_member_address")->insert($data);
            }
            if ($result) {
                return json(["code" => 0, "info" => "success"]);
            } else {
                return json(["code" => 1, "info" => "error"]);
            }
        }
        $item = db("xy_member_address")->where("uid", $uid)->find();
        $this->delivery = $item;
        return $this->fetch();
    }

    public function user_withdraw()
    {
        $uid = session('user_id');
        $type = input('post.type/s', 'trc');
        $withdraw_amount = input('post.withdraw_amount/d', 0);
        $wallet_address = input('post.address/s', '');
        $pwd2 = input('post.pwd2/s', '');

        $userinfo = db("xy_users")->field("pwd, salt, pwd2, salt2")->find($uid);

        if ($userinfo['pwd2'] != sha1($pwd2 . $userinfo['salt2'] . config('pwd_str'))) {
            return json(['code' => 1, 'info' => lang('Wrong payment password')]);
        }

        $id = getSn('CO');
        $data = [
            "id" => $id,
            "uid" => $uid,
            'bk_id' => 0,
            "type" => $type,
            "num" => $withdraw_amount,
            "addtime" => time(),
            "endtime" => time(),
            'notifyDate' => date('Y-m-d H:i:s'),
            'real_num' => $withdraw_amount,
        ];

        if ($type == "trc") {
            $data["trc20_address"] = $wallet_address;
        } else {
            $data["erc20_address"] = $wallet_address;
        }

        $result = db('xy_deposit')->insert($data);

        if ($result) {
            return json(["code" => 0, "info" => "后台提现扣除金额成功,请到提现管理审核!", "id" => $id]);
        } else {
            return json(["code" => 1, "info" => "后台操作失败!"]);
        }
    }

    public function check_withdraw()
    {
        $id = input('post.id/s', '');
        $result = db('xy_deposit')->find($id);
        if ($result["status"] == 2) {
            return json(["code" => 0, "info" => "success"]);
        }
        if ($result["status"] == 3) {
            return json(["code" => 1, "info" => "订单异常请联系客服"]);
        }
        return json(["code" => 2, "info" => "pending"]);
    }

    public function user_recharge()
    {
        $uid = session('user_id');
        if (!$uid && request()->isPost()) {
            $this->error(lang('请先登录'));
        }
        if (!$uid) {
            $this->redirect('User/login');
        }
        $type = input('post.type/d', 0);
        $recharge_amount = input('post.recharge_amount/d', 0);
        $pic_url = input('post.pic/s', '');
        $wallet_address = input('post.address/s', '');
        $data = [
            "uid" => $uid,
            "type" => $type,
            "num" => $recharge_amount,
            "pic" => $pic_url,
            "addtime" => time(),
            "endtime" => time(),
            'notifyDate' => date('Y-m-d H:i:s'),
            'wallet_address' => $wallet_address,
            'pay_name' => $type == 1 ? "TRC20" : "ERC20",
        ];
        $result = db('xy_recharge')->insert($data);
        if ($result) {
            return json(["code" => 0, "info" => "success"]);
        } else {
            return json(["code" => 1, "info" => "error"]);
        }
    }

    public function personal_information()
    {
        $uid = session('user_id');
        if (!$uid && request()->isPost()) {
            $this->error(lang('请先登录'));
        }
        if (!$uid) {
            $this->redirect('User/login');
        }
        $user = db('xy_users')->field('username, tel, headpic, address')->find($uid);
        $this->user = $user;
        return $this->fetch();
    }

    public function update_personal_info()
    {

        $uid = session('user_id');
        $user = db('xy_users')->field('username, tel, headpic, address')->find($uid);

        $username = input("post.username/s", "");
        $tel = input("post.tel/s", "");
        $address = input("post.address/s", "");
        $pwd = input("post.pwd/s", "");
        $pwd2 = input("post.pwd2/s", "");
        $headpic = input("post.headpic/s", "");

        $data = [
            "username" => $username ? $username : $user["username"],
            "tel" => $tel ? $tel : $user["tel"],
            "address" => $address ? $address : $user["address"],
            "headpic" => $headpic ? $headpic : $user["headpic"],
        ];

        if ($pwd) {
            $salt = rand(0, 99999); //生成盐
            $data['pwd'] = sha1($pwd . $salt . config('pwd_str'));
            $data['salt'] = $salt;
        }
        if ($pwd2) {
            $salt2 = rand(0, 99999); //生成盐
            $data['pwd2'] = sha1($pwd2 . $salt2 . config('pwd_str'));
            $data['salt2'] = $salt2;
        }
        $res = db('xy_users')->where('id', $uid)->update($data);
        if ($res) {
            return ['code' => 0, 'info' => '编辑成功'];
        } else {
            return ['code' => 1, 'info' => '操作失败'];
        }
    }

    /**
     * 系统图标选择器
     */
    public function icon()
    {
        $this->title = '图标选择器';
        $this->field = input('field', 'icon');
        $this->fetch();
    }

    /**
     * 获取文件上传参数
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function check()
    {
        $diff1 = explode(',', strtolower(input('exts', '')));
        $diff2 = explode(',', strtolower(sysconf('storage_local_exts')));
        $exts = array_intersect($diff1, $diff2);
        $this->success('获取文件上传参数', [
            'exts' => join('|', $exts),
            'mime' => File::mine($exts),
            'type' => $this->getUploadType(),
            'data' => $this->getUploadData(),
        ]);
    }

    /**
     * 后台通用文件上传
     * @return \think\response\Json
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function upload()
    {
        if (!($file = $this->getUploadFile()) || empty($file)) {
            return json(['uploaded' => false, 'error' => ['message' => '文件上传异常，文件可能过大或未上传']]);
        }
        if (!$file->checkExt(strtolower(sysconf('storage_local_exts')))) {
            return json(['uploaded' => false, 'error' => ['message' => '文件上传类型受限，请在后台配置']]);
        }
        if ($file->checkExt('php,sh')) {
            return json(['uploaded' => false, 'error' => ['message' => '可执行文件禁止上传到本地服务器']]);
        }
        $this->safe = boolval(input('safe'));
        $this->uptype = $this->getUploadType();
        $this->extend = pathinfo($file->getInfo('name'), PATHINFO_EXTENSION);
        $name = File::name($file->getPathname(), $this->extend, '', 'md5_file');
        $info = $this->save('/var/www/html/upload/', $name, file_get_contents($file->getRealPath()), $this->safe);
        // $info = File::instance($this->uptype)->save($name, file_get_contents($file->getRealPath()), $this->safe);
        if (is_array($info) && isset($info['url'])) {
            return json(['uploaded' => true, 'filename' => $name, 'url' => $this->safe ? $name : $info['url'], 'info' => $info]);
        } else {
            return json(['uploaded' => false, 'error' => ['message' => '文件处理失败，请稍候再试！']]);
        }
    }

    /**
     * 文件储存在本地
     * @param string $name 文件名称
     * @param string $content 文件内容
     * @param boolean $safe 安全模式
     * @return array|null
     */
    public function save($path, $name, $content, $safe = false)
    {
        try {
            $file = $path . $name;
            file_exists(dirname($file)) || mkdir(dirname($file), 0755, true);
            if (file_put_contents($file, $content)) {
                return $this->info($path, $name, $safe);
            }

        } catch (\Exception $e) {
        }
        return null;
    }

    /**
     * 获取文件信息
     * @param string $name 文件名称
     * @param boolean $safe 安全模式
     * @return array|null
     */
    public function info($path, $name, $safe = false)
    {
        $file = $path . $name;
        return ['file' => $file, 'hash' => md5_file($file), 'url' => $this->base($name), 'key' => "upload/{$name}"];
    }

    /**
     * 获取服务器URL前缀
     * @param string $name 文件名称
     * @param boolean $safe 安全模式
     * @return string|null
     */
    public function base($name = '', $safe = false)
    {
        return "/upload/{$name}";
    }

    /**
     * 生成文件上传参数
     * @return array
     * @throws \think\Exception
     */
    private function getUploadData()
    {
        if ($this->getUploadType() === 'qiniu') {
            $file = File::instance('qiniu');
            return ['url' => $file->upload(true), 'token' => $file->buildUploadToken(), 'uptype' => $this->getUploadType()];
        } else {
            return ['url' => '?s=admin/api.plugs/upload', 'token' => uniqid('local_upload_'), 'uptype' => $this->getUploadType()];
        }
    }

    /**
     * 获取文件上传方式
     * @return string
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    private function getUploadType()
    {
        $this->uptype = input('uptype');
        if (!in_array($this->uptype, ['local', 'oss', 'qiniu'])) {
            $this->uptype = sysconf('storage_type');
        }
        return $this->uptype;
    }

    /**
     * 获取本地文件对象
     * @return \think\File
     */
    private function getUploadFile()
    {
        try {
            return $this->request->file('file');
        } catch (\Exception $e) {
            $this->error(lang($e->getMessage()));
        }
    }
}
