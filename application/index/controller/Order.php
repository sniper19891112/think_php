<?php

namespace app\index\controller;

use think\Controller;
use think\Db;
use think\Request;

/**
 * 订单列表
 */
class Order extends Base
{

    public function index()
    {
        $uid = session('user_id');

        if (!$uid && request()->isPost()) {
            $this->error(lang('请先登录'));
        }
        if (!$uid) {
            $this->redirect('User/login');
        }

        $this->status = $status = input('get.status/d', 0);
        $where = [];
        if ($status) {
            $status == -1 ? $status = 0 : '';
            $where['xc.status'] = $status;
        }
        $this->balance = db('xy_users')->where('id', $uid)->value('balance'); //获取用户今日已充值金额

        $_query = $this->_query('xy_convey')
            ->where('xc.uid', session('user_id'))
            ->alias('xc')
            ->leftJoin('xy_goods_list xg', 'xc.goods_id=xg.id')
            ->field('xc.*,xg.goods_name,xg.shop_name,xg.goods_price,xg.goods_pic')
            ->order('xc.addtime desc')
            ->where($where)
            ->page(true, false);
        $this->list = $_query['list'];
        $color = sysconf('app_color');
        if ($color) {
            return $this->fetch('index-' . $color);
        } else {
            return $this->fetch('index-blue');
        }
    }

    public function order()
    {
        $uid = session('user_id');

        if (!$uid && request()->isPost()) {
            $this->error(lang('请先登录'));
        }
        if (!$uid) {
            $this->redirect('User/login');
        }
        $status = input("get.status/s", "");
        $itemsPerPage = 10;
        $order_list = db('xy_convey')
            ->where('xc.uid', session('user_id'));
        if ($status == "processing") {
            $order_list = $order_list->where("xc.status", "<>", 7);
        }
        if ($status == "completed") {
            $order_list = $order_list->where("xc.status", 7);
        }
        $order_list = $order_list
            ->alias('xc')
            ->leftJoin('xy_goods_list xg', 'xc.goods_id=xg.id')
            ->field('xc.*,xg.goods_name,xg.shop_name,xg.goods_price,xg.goods_pic')
            ->order('xc.addtime desc')
            ->paginate($itemsPerPage);
        $this->list = $order_list;
        $this->assign('pagination', $order_list->render());
        $this->select = "order";
        return $this->fetch();
    }

    public function create_settlement_order()
    {
        if (request()->isPost()) {
            $uid = session('user_id');
            $goods_id = input('post.goods_id/d', 0);
            if ($goods_id == 0) {
                return json(['code' => 1, 'info' => lang('参数错误')]);
            }
            $start_time = strtotime('today'); // Start of today (00:00:00)
            $end_time = strtotime('tomorrow') - 1; // End of today (23:59:59)
            $same_order = db("xy_convey")->where("uid", $uid)->where("goods_id", $goods_id)->whereBetween('addtime', [$start_time, $end_time])->count();
            if ($same_order > 0) {
                return json(['code' => 1, 'info' => lang('This order has been completed today')]);
                // return json(['code' => 1, 'info' => lang('该订单今日已完成')]);
            }
            $order_count = db("xy_convey")->where("uid", $uid)->whereBetween('addtime', [$start_time, $end_time])->count();
            $user = db("xy_users")->find($uid);
            $vip_item = db("xy_level")->where("level", $user['level'])->find();
            if ($order_count >= $vip_item["order_num"]) {
                return json(["code" => 1, "info" => "VIP level order quantity error"]);
            }
            $res = model('admin/Convey')->create_settlement_order(session('user_id'), $goods_id);
            return json($res);
        }
        return json(['code' => 1, 'info' => lang('错误请求')]);
    }

    public function check_vip_order() {
        $user = db("xy_users")->field("id, level")->select();
        foreach($user as $item) {
            $start_time = strtotime('today'); // Start of today (00:00:00)
            $end_time = strtotime('tomorrow') - 1; // End of today (23:59:59)
            $order_count = db("xy_convey")->where("uid", $item['id'])->whereBetween('addtime', [$start_time, $end_time])->count();
            $vip_item = db("xy_level")->where("level", $item['level'])->find();
            if ($order_count < $vip_item["tixian_nim_order"]) {
                // db("xy_users")->where('id', $item['id'])->update(["status" => 2]);
            }
        }
    }

    public function settlement_order_detail()
    {
        $uid = session('user_id');

        if (!$uid && request()->isPost()) {
            $this->error(lang('请先登录'));
        }
        if (!$uid) {
            $this->redirect('User/login');
        }
        $order_id = input('get.oid/s', '');
        $order = db('xy_convey')
            ->where('xc.id', $order_id)
            ->alias('xc')
            ->leftJoin('xy_goods_list xg', 'xc.goods_id=xg.id')
            ->leftJoin('xy_users xu', 'xc.uid=xu.id')
            ->leftJoin('xy_member_address xm', 'xc.uid=xm.uid')
            ->field('xc.*,xg.goods_name,xg.shop_name,xg.goods_price,xg.goods_pic,xm.name,xm.tel,xm.address,xu.balance')
            ->find();
        $this->order = $order;
        return $this->fetch();
    }

    public function confirm_receipt()
    {
        $uid = session('user_id');
        $order_id = input('post.order_id/s', '');
        $result = db('xy_convey')->where('id', $order_id)->update(['status' => 6]);
        // $orderinfo = db('xy_convey')->field("num, commission")->find($order_id);
        // $this->deal_reward($uid, $order_id, $orderinfo['num'], $orderinfo['commission']);
        if (!$result) {
            json(['code' => 1, 'info' => lang('error')]);
        }
        return json(['code' => 0, 'info' => lang('success')]);
    }

    public function submit_evaluation()
    {
        $uid = session('user_id');
        $order_id = input('post.order_id/s', '');
        $good_quality = input('post.good_quality/d', 0);
        $good_service = input('post.good_service/d', 0);
        $attitude_service = input('post.attitude_service/d', 0);
        $buyer_show_img = input('post.buyer_show_img/s', '');
        $data = [
            'status' => 7,
            'good_quality' => $good_quality,
            'good_service' => $good_service,
            'attitude_service' => $attitude_service,
            'buyer_show_img' => $buyer_show_img,
        ];
        $result = db('xy_convey')->where('id', $order_id)->update($data);
        $orderinfo = db('xy_convey')->field("num, commission")->find($order_id);
        $this->deal_reward($uid, $order_id, $orderinfo['num'], $orderinfo['commission']);
        model('admin/Users')->auto_check_up_vip_by_order($uid);
        if (!$result) {
            json(['code' => 1, 'info' => lang('error')]);
        }
        return json(['code' => 0, 'info' => lang('success')]);
    }

    public function confirm_order()
    {
        $uid = session('user_id');
        if (!$uid && request()->isPost()) {
            $this->error(lang('请先登录'));
        }
        if (!$uid) {
            $this->redirect('User/login');
        }
        $order_id = input('get.oid/s', '');
        $order = db('xy_convey')
            ->where('xc.id', $order_id)
            ->alias('xc')
            ->leftJoin('xy_goods_list xg', 'xc.goods_id=xg.id')
            ->leftJoin('xy_users xu', 'xc.uid=xu.id')
            ->leftJoin('xy_member_address xm', 'xc.uid=xm.uid')
            ->field('xc.*,xg.goods_name,xg.shop_name,xg.goods_price,xg.goods_pic,xm.name,xm.tel,xm.address,xu.balance')
            ->find();
        $this->order = $order;
        return $this->fetch();
    }

    public function submit_order()
    {
        $order_id = input('post.oid/s', '');
        // $pwd = input('post.pwd/s', '');
        $pwd2 = input('post.pwd2/s', '');
        if ($order_id == '') {
            return json(['code' => 1, 'info' => lang('参数错误')]);
        }
        $uid = session('user_id');
        $userinfo = db("xy_users")->field("pwd, salt, pwd2, salt2")->find($uid);

        // if ($userinfo['pwd'] != sha1($pwd . $userinfo['salt'] . config('pwd_str'))) {
        //     return json(['code' => 1, 'info' => lang('密码错误')]);
        // }

        if ($userinfo['pwd2'] != sha1($pwd2 . $userinfo['salt2'] . config('pwd_str'))) {
            return json(['code' => 1, 'info' => lang('Wrong payment password')]);
        }

        $info = db('xy_convey')->find($order_id);
        if ($info['status'] == 1 || $info['status'] == 2) {
            return json(['code' => 1, 'info' => lang('Paid already')]);
        }
        $tmp = ['endtime' => time() + config('deal_feedze'), 'status' => 2];
        $res = db('xy_convey')->where('id', $order_id)->update($tmp);
        $res1 = db('xy_users')
            ->where('id', $info['uid'])
            ->dec('balance', $info['num'])
            ->inc('freeze_balance', $info['num'] + $info['commission']) //冻结商品金额 + 佣金
            ->update(['deal_status' => 1, 'status' => 1]);
        $res2 = db('xy_balance_log')->insert([
            'uid' => $info['uid'],
            'oid' => $order_id,
            'num' => $info['num'],
            'type' => 2,
            'status' => 2,
            'addtime' => time(),
        ]);
        if ($res && $res1 && $res2) {
            return json(['code' => 0, 'info' => lang('success')]);
        } else {
            return json(['code' => 1, 'info' => lang('error')]);
        }
    }

    public function get_order_info()
    {

        $id = input('post.id', 0);

        $order = db('xy_convey')->where('uid', session('user_id'))->field('id,addtime')->find($id);
        $start = strtotime(date("Y-m-d", $order['addtime']));
        $end = $start + 24 * 60 * 60 - 1;
        $orderlist = db('xy_convey')->where('uid', session('user_id'))->where('addtime', 'between', [$start, $end])->field('id,addtime')->select();
        for ($x = 0; $x <= count($orderlist); $x++) {
            if ($id == $orderlist[$x]['id']) {
                $data['today_num'] = $x + 1;
                break;
            }
        }
        $data['code'] = "1";
        $data['date'] = date('m-d', $order['addtime']);
        $data['parent_username'] = "41y.cn";
        $data['addtime'] = $order['addtime'];
        $data['start'] = $start;
        return json($data);
    }

    /**
     * 获取订单列表
     */
    public function order_list()
    {
        $page = input('post.page/d', 1);
        $num = input('post.num/d', 10);
        $limit = ((($page - 1) * $num) . ',' . $num);
        $type = input('post.type/d', 1);
        switch ($type) {
            case 1: //获取待处理订单
                $type = 0;
                break;
            case 2: //获取冻结中订单
                $type = 5;
                break;
            case 3: //获取已完成订单
                $type = 1;
                break;
        }
        $data = db('xy_convey')
            ->where('xc.uid', session('user_id'))
            ->where('xc.status', $type)
            ->alias('xc')
            ->leftJoin('xy_goods_list xg', 'xc.goods_id=xg.id')
            ->field('xc.*,xg.goods_name,xg.shop_name,xg.goods_price,xg.goods_pic')
            ->order('xc.addtime desc')
            ->limit($limit)
            ->select();

        foreach ($data as &$datum) {
            $datum['endtime'] = date('Y/m/d H:i:s', $datum['endtime']);
            $datum['addtime'] = date('Y/m/d H:i:s', $datum['addtime']);
        }

        if (!$data) {
            json(['code' => 1, 'info' => lang('暂无数据')]);
        }

        return json(['code' => 0, 'info' => lang('请求成功'), 'data' => $data]);
    }

    /**
     * 获取单笔订单详情
     */
    public function order_info()
    {
        if (\request()->isPost()) {
            $oid = input('post.id', '');
            $oinfo = db('xy_convey')
                ->alias('xc')
                ->leftJoin('xy_member_address ar', 'ar.uid=xc.uid', 'ar.is_default=1')
                ->leftJoin('xy_goods_list xg', 'xg.id=xc.goods_id')
                ->leftJoin('xy_users u', 'u.id=xc.uid')
                ->field('xc.id oid,xc.commission,xc.addtime,xc.endtime,xc.status,xc.num,xc.goods_count,xc.add_id,xg.goods_name,xg.goods_price,xg.shop_name,xg.goods_pic,ar.name,ar.tel,ar.address,u.balance')
                ->where('xc.id', $oid)
                ->where('xc.uid', session('user_id'))
                ->find();
            if (!$oinfo) {
                return json(['code' => 1, lang('暂无数据')]);
            }

            $oinfo['endtime'] = date('Y/m/d H:i:s', $oinfo['endtime']);
            $oinfo['addtime'] = date('Y/m/d H:i:s', $oinfo['addtime']);

            return json(['code' => 0, 'info' => lang('请求成功'), 'data' => $oinfo]);
        }
    }

    /**
     * 处理订单
     */
    public function do_order()
    {
        if (request()->isPost()) {
            $oid = input('post.oid/s', '');
            $status = input('post.status/d', 1);
            $add_id = input('post.add_id/d', 0);
            if (!\in_array($status, [1, 2])) {
                json(['code' => 1, 'info' => lang('参数错误')]);
            }

            $res = model('admin/Convey')->do_order($oid, $status, session('user_id'), $add_id);
            return json($res);
        }
        return json(['code' => 1, 'info' => lang('错误请求')]);
    }

    /**
     * 获取充值订单
     */
    public function get_recharge_order()
    {
        $uid = session('user_id');
        $page = input('post.page/d', 1);
        $num = input('post.num/d', 10);
        $limit = ((($page - 1) * $num) . ',' . $num);
        $info = db('xy_recharge')->where('uid', $uid)->order('addtime desc')->limit($limit)->select();
        if (!$info) {
            return json(['code' => 1, 'info' => lang('暂无数据')]);
        }

        return json(['code' => 0, 'info' => lang('请求成功'), 'data' => $info]);
    }

    /**
     * 验证提现密码
     */
    public function check_pwd2()
    {
        if (!request()->isPost()) {
            return json(['code' => 1, 'info' => lang('错误请求')]);
        }

        $pwd2 = input('post.pwd2/s', '');
        $info = db('xy_users')->field('pwd2,salt2')->find(session('user_id'));
        if ($info['pwd2'] == '') {
            return json(['code' => 1, 'info' => lang('未设置交易密码')]);
        }

        if ($info['pwd2'] != sha1($pwd2 . $info['salt2'] . config('pwd_str'))) {
            return json(['code' => 1, 'info' => lang('密码错误')]);
        }

        return json(['code' => 0, 'info' => lang('验证通过')]);
    }

    /**
     * 交易返佣
     *
     * @return void
     */
    public function deal_reward($uid, $oid, $num, $cnum)
    {
        $res = db('xy_users')->where('id', $uid)->where('status', 1)->setInc('balance', $num + $cnum);
        $res2 = db('xy_users')->where('id', $uid)->where('status', 1)->setDec('freeze_balance', $num + $cnum);

        if ($res) {
            db('xy_reward_log')->insert(['oid' => $oid, 'uid' => $uid, 'num' => $num, 'addtime' => time(), 'type' => 2]); //记录充值返佣订单
            db('xy_balance_log')->insert([
                'uid' => $uid,
                'oid' => $oid,
                'num' => $num,
                'type' => 2,
                'status' => 1,
                'addtime' => time(),
            ]);
            db('xy_balance_log')->insert([
                'uid'       => $uid,
                'oid'       => $oid,
                'num'       => $num * config('reward'),
                'type'      => 3,
                'addtime'   => time(),
                'status' => 1,
            ]);
            /************* 发放交易奖励 *********/
            $userList = model('admin/Users')->parent_user($uid, 10);
            if ($userList) {
                foreach ($userList as $v) {
                    if ($v['status'] === 1) {
                        if ($v["lv"] < 3) {
                            db('xy_reward_log')
                                ->insert([
                                    'uid' => $v['id'],
                                    'sid' => $uid,
                                    'oid' => $oid,
                                    'num' => $num * config($v['lv'] . '_d_reward'),
                                    'lv' => $v['lv'],
                                    'type' => 2,
                                    'status' => 1,
                                    'addtime' => time(),
                                ]);
                            db('xy_balance_log')->insert([
                                //记录返佣信息
                                'uid' => $v['id'],
                                'oid' => $oid,
                                'sid' => $uid,
                                'num' => $num * config($v['lv'] . '_d_reward'),
                                'type' => 6,
                                'status' => 1,
                                'f_lv' => $v['lv'],
                                'addtime' => time(),
                            ]);
                            $sub_commission = $num * config($v['lv'] . '_d_reward'); //佣金
                            $res = db('xy_users')->where('id', $v['id'])->where('status', 1)->setInc('balance', $sub_commission);
                        }
                        if ($v['vip_level'] == 3) {
                            $sub_commission = $num * config('3_d_reward');
                            db('xy_reward_log')
                                ->insert([
                                    'uid' => $v['id'],
                                    'sid' => $uid,
                                    'oid' => $oid,
                                    'num' => $sub_commission,
                                    'lv' => $v['lv'],
                                    'type' => 2,
                                    'status' => 1,
                                    'addtime' => time(),
                                ]);
                            db('xy_balance_log')->insert([
                                //记录返佣信息
                                'uid' => $v['id'],
                                'oid' => $oid,
                                'sid' => $uid,
                                'num' => $sub_commission,
                                'type' => 6,
                                'status' => 1,
                                'f_lv' => $v['lv'],
                                'addtime' => time(),
                            ]);
                            $res = db('xy_users')->where('id', $v['id'])->where('status', 1)->setInc('balance', $sub_commission);
                        }
                        if ($v['vip_level'] == 4) {
                            $sub_commission = $num * config('4_d_reward');
                            db('xy_reward_log')
                                ->insert([
                                    'uid' => $v['id'],
                                    'sid' => $uid,
                                    'oid' => $oid,
                                    'num' => $sub_commission,
                                    'lv' => $v['lv'],
                                    'type' => 2,
                                    'status' => 1,
                                    'addtime' => time(),
                                ]);
                            db('xy_balance_log')->insert([
                                //记录返佣信息
                                'uid' => $v['id'],
                                'oid' => $oid,
                                'sid' => $uid,
                                'num' => $sub_commission,
                                'type' => 6,
                                'status' => 1,
                                'f_lv' => $v['lv'],
                                'addtime' => time(),
                            ]);
                            $res = db('xy_users')->where('id', $v['id'])->where('status', 1)->setInc('balance', $sub_commission);
                        }
                    }
                }
            }
            /************* 发放交易奖励 *********/
        } else {
            $res1 = db('xy_convey')->where('id', $oid)->update(['c_status' => 2]); //记录账号异常
        }

    }

    public function test()
    {
        $uid = session('user_id');
        $userList = model('admin/Users')->parent_user($uid, 4);
        return json($userList);
    }
}
