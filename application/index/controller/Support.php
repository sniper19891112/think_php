<?php

namespace app\index\controller;

use think\Controller;

class Support extends Base
{
    /**
     * 首页
     */
    public function index()
    {
        $uid = session('user_id');
        if (!$uid) {
            $this->redirect('User/login');
        }

        return $this->fetch();
    }

    public function index2()
    {
        $this->url = isset($_REQUEST['url']) ? $_REQUEST['url'] : '';
        return $this->fetch();
    }

    /**
     * 首页
     */
    public function detail()
    {
        $id = input('get.id/d', 1);
        $this->info = db('xy_index_msg')->where('id', $id)->find();

        return $this->fetch();
    }

    /**
     * 换一个客服
     */
    public function other_cs()
    {
        $data = db('xy_cs')->where('status', 1)->where('id', '<>', 1)->find();
        if ($data) {
            return json(['code' => 0, 'info' => lang('请求成功'), 'data' => $data]);
        }

        return json(['code' => 1, 'info' => lang('暂无数据')]);
    }
}
