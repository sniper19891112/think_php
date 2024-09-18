<?php /*a:2:{s:65:"F:\xampp\htdocs\think_php\application\index\view\order\order.html";i:1726662577;s:66:"F:\xampp\htdocs\think_php\application\index\view\public\floor.html";i:1726431156;}*/ ?>
<!DOCTYPE html><html><head><meta charset="utf-8" /><meta name="viewport"
        content="width=device-width,user-scalable=no,initial-scale=1,maximum-scale=1,minimum-scale=1" /><meta name="apple-mobile-web-app-capable" content="yes" /><meta content="telephone=yes" name="format-detection" /><meta name="apple-mobile-web-app-status-bar-style" content="white" /><meta name="x5-fullscreen" content="true" /><meta name="apple-touch-fullscreen" content="yes" /><title><?php echo lang('我的订单'); ?></title><link rel="stylesheet" href="/statics/css/global.css" /><link rel="stylesheet" href="/web/css/order.css" /><link rel="stylesheet" href="/static_new/css/public.css"><link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"><link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined"><script charset="utf-8" src="/static_new/js/jquery.min.js"></script><script charset="utf-8" src="/static_new/js/dialog.min.js"></script><script charset="utf-8" src="/static_new/js/common.js"></script></head><body><div id="app"><div class="order-header">My order</div><div class="order-container"><?php if($list): if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;
            $status_text = '';
            if($v['status']==0) $status_text = 'Waiting for payment';
            // if($v['status']==1) $status_text = 'Paid';
            // if($v['status']==2) $status_text = 'Waiting for shipment';
            if($v['status']==1 || $v['status']==2) $status_text = 'Paid';
            // if($v['status']==3) $status_text = 'Shipped';
            // if($v['status']==4) $status_text = 'Waiting for receipt';
            if($v['status']==3 || $v['status']==4) $status_text = 'Shipped';
            // if($v['status']==5) $status_text = 'Received';
            // if($v['status']==6) $status_text = 'Waiting for evaluation';
            if($v['status']==5 || $v['status']==6) $status_text = 'Received';
            if($v['status']==7) $status_text = 'Rated';
            $settlement_value = round($v['goods_price'] * $v['goods_count'], 2);
             if($v['status'] > 1): ?><a href="<?php echo url('order/settlement_order_detail'); ?>?oid=<?php echo htmlentities($v['id']); ?>"><?php endif; ?><div class="order-item"><div class="order-item-title-container"><div class="order-item-title">Product:
                            <span style="color: #333333;"><?php 
                                echo mb_strimwidth($v['goods_name'], 0, 25, '...');
                                 ?></span></div><div class="order-item-time"><?php echo htmlentities(format_datetime($v['addtime'],'Y-m-d H:i:s')); ?></div></div><div class="order-item-status-container"><div class="order-item-status-text">                            Order status:
                            <span class="order-item-status <?php if($v['status'] == 0): ?>bg-2595e8<?php else: ?>bg-26d28b<?php endif; ?>"><?php echo htmlentities($status_text); ?></span></div></div><div class="order-settlement-container"><div class="order-settlement-container-text">                            Order settlement:
                            <span class="order-settlement-value">$<?php echo htmlentities($settlement_value); ?></span></div><?php if($v['status'] == 0): ?><a href="<?php echo url('order/confirm_order'); ?>?oid=<?php echo htmlentities($v['id']); ?>"><button class="order-settlement-confirm">Submit Order</button></a><?php elseif($v['status'] == 3 || $v['status'] == 4): ?><a href="<?php echo url('order/settlement_order_detail'); ?>?oid=<?php echo htmlentities($v['id']); ?>"><button class="order-settlement-confirm">Confirm Receipt</button></a><?php elseif($v['status'] == 5 || $v['status'] == 6): ?><a href="<?php echo url('order/settlement_order_detail'); ?>?oid=<?php echo htmlentities($v['id']); ?>"><button class="order-settlement-confirm">Submit evaluation</button></a><?php endif; ?></div></div><?php if($v['status'] > 1): ?></a><?php endif; ?><?php endforeach; endif; else: echo "" ;endif; else: ?><?php endif; ?><!-- Display pagination links --><div><?php echo $pagination; ?></div></div><link href="/web/css/footer.css" rel="stylesheet" /><div class="footer"><a href="/index/index/home"><div class="<?php if($select == 'home'): ?>footer-active-item<?php endif; ?> footer-item"><i class="<?php if($select == 'home'): ?>material-icons<?php else: ?>material-icons-outlined<?php endif; ?>">home</i><div><?php echo lang('Home page'); ?></div></div></a><a href="/index/shop/cartlist"><div class="<?php if($select == 'cart'): ?>footer-active-item<?php endif; ?> footer-item"><i class="<?php if($select == 'cart'): ?>material-icons<?php else: ?>material-icons-outlined<?php endif; ?>">shopping_cart</i><div><?php echo lang('Shopping cart'); ?></div></div></a><a href="/index/order/order"><div class="<?php if($select == 'order'): ?>footer-active-item<?php endif; ?> footer-item"><i class="<?php if($select == 'order'): ?>material-icons<?php else: ?>material-icons-outlined<?php endif; ?>">list_alt</i><div><?php echo lang('Order for goods'); ?></div></div></a><a href="/index/my/index"><div class="<?php if($select == 'my'): ?>footer-active-item<?php endif; ?> footer-item"><i class="<?php if($select == 'my'): ?>material-icons<?php else: ?>material-icons-outlined<?php endif; ?>">person</i><div><?php echo lang('Mine'); ?></div></div></a></div><script>
    function updateactivetime() {
        var url = "<?php echo url('user/updateactivetime'); ?>";
        var isopenoline = 1;
        $.ajax({
            type: "POST",
            url: url,
            data: isopenoline,
            dataType: "json",
            success: function (result) {
                console.log(result);
                if (result.code == "0") {

                    alert(result.msg);
                }
            },
            error: function () {
                //alert();
            }
        });
    }
    updateactivetime();
    setInterval(updateactivetime, 1000 * 30);
</script></div></body><script type="application/javascript"></script></html>