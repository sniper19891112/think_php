<?php
namespace app\index\controller;

use library\Controller;
use think\Db;

/**
 * 应用入口
 * Class Index
 * @package app\index\controller
 */
class Index extends Base
{

    public function index()
    {
        $uid = session('user_id');
        if ($uid) {
            $this->redirect('home');
        } else {
            $this->changelang();
            $this->redirect('landing');
        }
    }

    public function landing()
    {
        return $this->fetch('landing');
    }

    public function home()
    {
        $uid = session('user_id');
        if (!$uid) {
            $this->redirect('User/login');
        }
        $this->scrolling_content = db('xy_index_msg')->where('id', 8)->find();
        $this->service_url = sysconf("service_url");
        $this->total_income = db('xy_balance_log')->where("uid", $uid)->where("type", "in", [3, 6])->sum('num');
        $this->banner = db('xy_banner')->select();
        $this->select = "home";
        return $this->fetch();
    }

    public function about_us() {
        $uid = session('user_id');
        if (!$uid) {
            $this->redirect('User/login');
        }
        $this->platform_introduction = db('xy_index_msg')->where('id', 2)->find();
        return $this->fetch();
    }

    public function help() {
        $uid = session('user_id');
        if (!$uid) {
            $this->redirect('User/login');
        }
        $this->help = db('xy_index_msg')->where('id', 6)->find();
        return $this->fetch();
    }

    public function service() {
        $uid = session('user_id');
        if (!$uid) {
            $this->redirect('User/login');
        }
        $this->service = db('xy_index_msg')->where('id', 13)->find();
        return $this->fetch();
    }

    //获取首页图文
    public function get_msg()
    {
        $type = input('post.type/d', 1);
        $data = db('xy_index_msg')->find($type);
        if ($data) {
            return json(['code' => 0, 'info' => lang('请求成功'), 'data' => $data]);
        } else {
            return json(['code' => 1, 'info' => lang('暂无数据')]);
        }

    }

    //获取首页图文
    public function getTongji()
    {
        $percent = (time() - strtotime(date("Y-m-d"), time())) / (24 * 60 * 60);

        $xunimoney = intval(sysconf('index_money_num') * $percent);
        $xunimember = intval(sysconf('index_member_num') * $percent);

        $type = input('post.type/d', 1);
        $data = array();

        $data['user'] = db('xy_users')->where('status', 1)->where('addtime', 'between', [strtotime(date('Y-m-d')) - 24 * 3600, time()])->count('id');
        $data['user'] = $data['user'] + $xunimember;
        $data['goods'] = db('xy_goods_list')->count('id');
        $data['price'] = db('xy_convey')->where('status', 1)->where('endtime', 'between', [strtotime(date('Y-m-d')) - 24 * 3600, strtotime(date('Y-m-d'))])->sum('num');
        $data['price'] = $data['price'] + $xunimoney;
        $user_order = db('xy_convey')->where('status', 1)->where('addtime', 'between', [strtotime(date('Y-m-d')), time()])->field('uid')->Distinct(true)->select();
        $data['num'] = count($user_order);

        if ($data) {
            return json(['code' => 0, 'info' => lang('请求成功'), 'data' => $data]);
        } else {
            return json(['code' => 1, 'info' => lang('暂无数据')]);
        }
    }

    public function getDanmu()
    {
        $barrages = //弹幕内容
        array(
            array(
                'info' => '用户173***4985开通会员成功',
                'href' => '',

            ),
            array(
                'info' => '用户136***1524开通会员成功',
                'href' => '',
                'color' => '#ff6600',

            ),
            array(
                'info' => '用户139***7878开通会员成功',
                'href' => '',
                'bottom' => 450,
            ),
            array(
                'info' => '用户159***7888开通会员成功',
                'href' => '',
                'close' => false,

            ), array(
                'info' => '用户151***7799开通会员成功',
                'href' => '',

            ),
        );

        echo json_encode($barrages);
    }

    public function app()
    {

        return $this->fetch();
    }
    public function get_user_msg()
    {

        $uid = session('user_id');
        $data['uid'] = $uid;
        $data['num'] = db('xy_message')->where('uid', $uid)->where('status', 0)->count('id');
        $data['info'] = db('xy_message')->where('uid', $uid)->where('status', 0)->find();

        return json(['code' => 1, 'uid' => $uid, 'num' => $data['num'], 'info' => $data['info']]);
    }
    public function set_user_msg()
    {

        if (!request()->isPost()) {
            return json(['code' => 0, 'info' => '错误请求']);
        }

        $id = input('post.id/s', 0);
        if (!$id) {
            return json(['code' => 0, 'info' => '消息id错误']);
        }

        $check = db('xy_message')->where('uid', session('user_id'))->where('id', $id)->find();
        if ($check) {

            db('xy_message')->where('id', $id)->update(['status' => 1]);

            return json(['code' => 1, 'info' => "设置已读成功"]);
        } else {

            return json(['code' => 0, 'info' => "消息不属于当前用户"]);
        }
    }

}
