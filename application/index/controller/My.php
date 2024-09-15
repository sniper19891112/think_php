<?php

namespace app\index\controller;

use think\Controller;
use think\Db;
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
        return $this->fetch();
    }
}
