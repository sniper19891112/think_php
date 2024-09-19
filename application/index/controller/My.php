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
        $user = db('xy_users')->field('username, tel, headpic, balance')->find($uid);
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
        $this->type = $wallet == "trc20" ? 1 : 2;
        return $this->fetch();
    }

    public function user_withdraw()
    {
        $uid = session('user_id');
        $type = input('post.type/d', 0);
        $withdraw_amount = input('post.withdraw_amount/d', 0);
        $wallet_address = input('post.address/s', '');
        $id = getSn('CO');
        $data = [
            "id" => $id,
            "uid" => $uid,
            "type" => $type,
            "num" => $withdraw_amount,
            "addtime" => time(),
            "endtime" => time(),
            'notifyDate' => date('Y-m-d H:i:s'),
        ];
        if ($type == 1) {
            $data["trc20_address"] = $wallet_address;
        } else {
            $data["erc20_address"] = $wallet_address;
        }
        $result = db('xy_deposit')->insert($data);
        if ($result) {
            return json(["code" => 0, "info" => "success"]);
        } else {
            return json(["code" => 1, "info" => "error"]);
        }
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
