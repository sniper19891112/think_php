<?php /*a:2:{s:62:"F:\xampp\htdocs\think_php\application\index\view\my\index.html";i:1726567049;s:66:"F:\xampp\htdocs\think_php\application\index\view\public\floor.html";i:1726431156;}*/ ?>
<!DOCTYPE html><html><head><meta charset="utf-8" /><meta name="viewport"
        content="width=device-width,user-scalable=no,initial-scale=1,maximum-scale=1,minimum-scale=1" /><meta name="apple-mobile-web-app-capable" content="yes" /><meta content="telephone=yes" name="format-detection" /><meta name="apple-mobile-web-app-status-bar-style" content="white" /><meta name="x5-fullscreen" content="true" /><meta name="apple-touch-fullscreen" content="yes" /><title><?php echo lang('我的'); ?></title><link rel="stylesheet" href="/statics/css/global.css" /><link rel="stylesheet" href="/web/css/my.css" /><link rel="stylesheet" href="/static_new/css/public.css"><link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"><link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined"><script charset="utf-8" src="/static_new/js/jquery.min.js"></script><script charset="utf-8" src="/static_new/js/dialog.min.js"></script><script charset="utf-8" src="/static_new/js/common.js"></script></head><body><div id="app"><div class="my-container"><div class="my-container-header"><div class="d-flex align-center"><img src="/web/img/USER_item.png" width="64" height="64"><div style="margin-left: 10px;"><div class="text-18 font-800">Little bamboo shoots</div><div class="text-14 color-2B2B2B">15800000000</div></div></div><img src="/public/img/图层_832.png" /></div><div class="my-account-balance"><div class="text-14 font-800 color-white">Account balance</div><div class="text-32 font-800 color-white" style="margin-top: 12px;"><?php echo htmlentities($balance); ?></div></div><div class="my-order"><div class="text-16 font-800 color-2B2B2B">My order</div><div class="my-order-container"><div style="text-align: center;" class="cursor-pointer"><img src="/public/img/组_20.png" /><div class="text-14 color-2B2B2B">All</div></div><div style="text-align: center;" class="cursor-pointer"><img src="/public/img/组_24.png" /><div class="text-14 color-2B2B2B">Under way</div></div><div style="text-align: center;" class="cursor-pointer"><img src="/public/img/组_25.png" /><div class="text-14 color-2B2B2B">Received</div></div></div></div><div class="my-other-functions"><div class="text-16 font-800 color-2B2B2B">Other functions</div><div style="padding: 13px;" class="d-flex align-center justify-between"><div style="text-align: center;" class="cursor-pointer"><img src="/public/img/组_35.png" /><div class="text-14 color-2B2B2B">Purse</div></div><a href="/index/my/wallet"><div style="text-align: center;" class="cursor-pointer"><img src="/public/img/组_36.png" /><div class="text-14 color-2B2B2B">Wallet</div></div></a><div style="text-align: center;" class="cursor-pointer"><img src="/public/img/组_37.png" /><div class="text-14 color-2B2B2B">Delivery address</div></div><div style="text-align: center;" class="cursor-pointer"><img src="/public/img/组_38.png" /><div class="text-14 color-2B2B2B">My team</div></div></div><div style="padding: 13px;" class="d-flex align-center justify-between"><div style="text-align: center;" class="cursor-pointer"><img src="/public/img/组_45.png" /><div class="text-14 color-2B2B2B">Invitation code</div></div><div style="text-align: center;" class="cursor-pointer"><img src="/public/img/组_46.png" /><div class="text-14 color-2B2B2B">Online customer service</div></div><div style="text-align: center;" class="cursor-pointer"><img src="/public/img/组_47.png" /><div class="text-14 color-2B2B2B">Account setting</div></div></div></div></div><link href="/web/css/footer.css" rel="stylesheet" /><div class="footer"><a href="/index/index/home"><div class="<?php if($select == 'home'): ?>footer-active-item<?php endif; ?> footer-item"><i class="<?php if($select == 'home'): ?>material-icons<?php else: ?>material-icons-outlined<?php endif; ?>">home</i><div><?php echo lang('Home page'); ?></div></div></a><a href="/index/shop/cartlist"><div class="<?php if($select == 'cart'): ?>footer-active-item<?php endif; ?> footer-item"><i class="<?php if($select == 'cart'): ?>material-icons<?php else: ?>material-icons-outlined<?php endif; ?>">shopping_cart</i><div><?php echo lang('Shopping cart'); ?></div></div></a><a href="/index/order/order"><div class="<?php if($select == 'order'): ?>footer-active-item<?php endif; ?> footer-item"><i class="<?php if($select == 'order'): ?>material-icons<?php else: ?>material-icons-outlined<?php endif; ?>">list_alt</i><div><?php echo lang('Order for goods'); ?></div></div></a><a href="/index/my/index"><div class="<?php if($select == 'my'): ?>footer-active-item<?php endif; ?> footer-item"><i class="<?php if($select == 'my'): ?>material-icons<?php else: ?>material-icons-outlined<?php endif; ?>">person</i><div><?php echo lang('Mine'); ?></div></div></a></div><script>
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