<?php /*a:2:{s:64:"F:\xampp\htdocs\think_php\application\index\view\index\home.html";i:1725907957;s:66:"F:\xampp\htdocs\think_php\application\index\view\public\floor.html";i:1725953038;}*/ ?>
<!DOCTYPE html><html><head><meta charset="utf-8" /><meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1,maximum-scale=1,minimum-scale=1" /><meta name="apple-mobile-web-app-capable" content="yes" /><meta content="telephone=yes" name="format-detection" /><meta name="apple-mobile-web-app-status-bar-style" content="white" /><meta name="x5-fullscreen" content="true" /><meta name="apple-touch-fullscreen" content="yes" /><title><?php echo lang('首页'); ?></title><link rel="stylesheet" href="/statics/css/global.css" /><link rel="stylesheet" href="/web/css/home.css" /><link rel="stylesheet" href="/static_new/css/public.css"><link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"><link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined"><script charset="utf-8" src="/static_new/js/jquery.min.js"></script><script charset="utf-8" src="/static_new/js/dialog.min.js"></script><script charset="utf-8" src="/static_new/js/common.js"></script></head><body><div id="app"><div class="home-container"><div class="home-body-1"><div>CarouMaket</div><div>Review RoBoT</div></div><div class="home-body-2"></div></div><link href="/web/css/footer.css" rel="stylesheet" /><div class="footer"><a href="/index/index/home"><div class="<?php if($select == 'home'): ?>footer-active-item<?php endif; ?> footer-item"><i class="<?php if($select == 'home'): ?>material-icons<?php else: ?>material-icons-outlined<?php endif; ?>">home</i><div><?php echo lang('Home page'); ?></div></div></a><a href="/index/shop/cartlist"><div class="<?php if($select == 'cart'): ?>footer-active-item<?php endif; ?> footer-item"><i class="<?php if($select == 'cart'): ?>material-icons<?php else: ?>material-icons-outlined<?php endif; ?>">shopping_cart</i><div><?php echo lang('Shopping cart'); ?></div></div></a><div class="<?php if($select == 'order'): ?>footer-active-item<?php endif; ?> footer-item"><i class="<?php if($select == 'order'): ?>material-icons<?php else: ?>material-icons-outlined<?php endif; ?>">list_alt</i><div><?php echo lang('Order for goods'); ?></div></div><div class="<?php if($select == 'my'): ?>footer-active-item<?php endif; ?> footer-item"><i class="<?php if($select == 'my'): ?>material-icons<?php else: ?>material-icons-outlined<?php endif; ?>">person</i><div><?php echo lang('Mine'); ?></div></div></div><script>
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