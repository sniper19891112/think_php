<?php /*a:2:{s:64:"F:\xampp\htdocs\think_php\application\index\view\index\home.html";i:1726433949;s:66:"F:\xampp\htdocs\think_php\application\index\view\public\floor.html";i:1726431156;}*/ ?>
<!DOCTYPE html><html><head><meta charset="utf-8" /><meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1,maximum-scale=1,minimum-scale=1" /><meta name="apple-mobile-web-app-capable" content="yes" /><meta content="telephone=yes" name="format-detection" /><meta name="apple-mobile-web-app-status-bar-style" content="white" /><meta name="x5-fullscreen" content="true" /><meta name="apple-touch-fullscreen" content="yes" /><title><?php echo lang('首页'); ?></title><link rel="stylesheet" href="/statics/css/global.css" /><link rel="stylesheet" href="/web/css/home.css" /><link rel="stylesheet" href="/static_new/css/public.css"><link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"><link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined"><script charset="utf-8" src="/static_new/js/jquery.min.js"></script><script charset="utf-8" src="/static_new/js/dialog.min.js"></script><script charset="utf-8" src="/static_new/js/common.js"></script></head><body><div id="app"><div class="home-container"><div class="home-body-1" style="margin-top: 40px;"><div>CarouMaket &nbsp;&nbsp;&nbsp;&nbsp;Review RoBoT</div><div class="arrow-right"></div></div><div class="home-body-2"><div class="font-bold text-14 color-white">累计收益</div><div style="display: flex; align-items: center;"><img src="/public/img/组 136.png" /><div class="font-bold text-18 color-white">285.9</div><div class="font-bold text-12 color-white" style="margin-top: 2px; margin-left: 2px;">USDT</div></div></div><img src="/public/img/home.png" style="width: 100%; margin-top: 24px;" /><div class="home-body-3"><img src="/public/img/组 141.png" /></div><div class="home-body-4-text" style="margin-top: 50px;">我的服务</div><div class="home-body-5"><div><div style="position: relative;"><img src="/public/img/组 150.png" /><div class="home-body-5-text-1">关于我们</div></div><div style="margin-top: 4px; position: relative;"><img src="/public/img/组 149.png" /><div class="home-body-5-text-2">帮助</div></div></div><div style="position: relative;"><img src="/public/img/组 148.png" /><div class="home-body-5-text-3">服务</div></div></div><div class="home-body-6-text" style="margin-top: 50px;">合作伙伴</div><div class="home-body-7"><!-- <div class="d-flex align-center justify-between"> --><img src="/public/img/蒙版组 7.png" style="margin: 4px" /><img src="/public/img/蒙版组 7(1).png" style="margin: 4px" /><img src="/public/img/蒙版组 7(2).png" style="margin: 4px" /><img src="/public/img/蒙版组 7(3).png" style="margin: 4px" /><img src="/public/img/蒙版组 7(4).png" style="margin: 4px" /><img src="/public/img/蒙版组 7(5).png" style="margin: 4px" /><!-- </div> --><!-- <div class="d-flex align-center justify-between"> --><img src="/public/img/蒙版组 7(6).png" style="margin: 4px" /><img src="/public/img/蒙版组 7(7).png" style="margin: 4px" /><img src="/public/img/蒙版组 7(8).png" style="margin: 4px" /><img src="/public/img/蒙版组 7.png" style="margin: 4px" /><img src="/public/img/蒙版组 8.png" style="margin: 4px" /><img src="/public/img/蒙版组 8(1).png" style="margin: 4px" /><!-- </div> --></div></div><link href="/web/css/footer.css" rel="stylesheet" /><div class="footer"><a href="/index/index/home"><div class="<?php if($select == 'home'): ?>footer-active-item<?php endif; ?> footer-item"><i class="<?php if($select == 'home'): ?>material-icons<?php else: ?>material-icons-outlined<?php endif; ?>">home</i><div><?php echo lang('Home page'); ?></div></div></a><a href="/index/shop/cartlist"><div class="<?php if($select == 'cart'): ?>footer-active-item<?php endif; ?> footer-item"><i class="<?php if($select == 'cart'): ?>material-icons<?php else: ?>material-icons-outlined<?php endif; ?>">shopping_cart</i><div><?php echo lang('Shopping cart'); ?></div></div></a><a href="/index/order/order"><div class="<?php if($select == 'order'): ?>footer-active-item<?php endif; ?> footer-item"><i class="<?php if($select == 'order'): ?>material-icons<?php else: ?>material-icons-outlined<?php endif; ?>">list_alt</i><div><?php echo lang('Order for goods'); ?></div></div></a><a href="/index/my/index"><div class="<?php if($select == 'my'): ?>footer-active-item<?php endif; ?> footer-item"><i class="<?php if($select == 'my'): ?>material-icons<?php else: ?>material-icons-outlined<?php endif; ?>">person</i><div><?php echo lang('Mine'); ?></div></div></a></div><script>
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