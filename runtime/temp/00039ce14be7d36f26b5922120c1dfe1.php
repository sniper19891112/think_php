<?php /*a:2:{s:67:"F:\xampp\htdocs\think_php\application\index\view\shop\cartlist.html";i:1726419243;s:66:"F:\xampp\htdocs\think_php\application\index\view\public\floor.html";i:1726431156;}*/ ?>
<!DOCTYPE html><html><head><meta charset="utf-8" /><meta name="viewport"
        content="width=device-width,user-scalable=no,initial-scale=1,maximum-scale=1,minimum-scale=1" /><meta name="apple-mobile-web-app-capable" content="yes" /><meta content="telephone=yes" name="format-detection" /><meta name="apple-mobile-web-app-status-bar-style" content="white" /><meta name="x5-fullscreen" content="true" /><meta name="apple-touch-fullscreen" content="yes" /><title><?php echo lang('首页'); ?></title><link rel="stylesheet" href="/statics/css/global.css" /><link rel="stylesheet" href="/web/css/cartlist.css" /><link rel="stylesheet" href="/static_new/css/public.css"><link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"><link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined"><script charset="utf-8" src="/static_new/js/jquery.min.js"></script><script charset="utf-8" src="/static_new/js/dialog.min.js"></script><script charset="utf-8" src="/static_new/js/common.js"></script></head><body><div id="app"><div class="cartlist-container"><div class="cartlist-header"><div class="cartlist-header-text">Shopping cart</div><button class="cartlist-header-btn"><i class="material-icons-outlined color-FF5035">delete</i></button></div><div class="cartlist-body"><?php if(isset($noItemsMessage)): ?><div class="cartlist-no-item"><div class="cartlist-no-item-text"><?php echo htmlentities($noItemsMessage); ?></div><button class="cartlist-no-item-btn">Continue shopping</button></div><?php else: if(is_array($cartlist) || $cartlist instanceof \think\Collection || $cartlist instanceof \think\Paginator): $i = 0; $__LIST__ = $cartlist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?><div class="cartlist-item" onclick="itemActive('<?php echo htmlentities($item['id']); ?>', '<?php echo htmlentities($item['addtime']); ?>')"><div class="cartlist-item-timecount display-none" id="cartlist-item-timecount-<?php echo htmlentities($item['id']); ?>"></div><i class="material-icons-outlined cartlist-item-radio-icon"
                        id="material-icons-outlined-<?php echo htmlentities($item['id']); ?>">radio_button_checked</i><?php if($item['goods_pic']): ?><img class="cartlist-item-img" src="<?php echo htmlentities($item['goods_pic']); ?>" /><?php else: ?><div class="cartlist-item-img"></div><?php endif; ?><div style="margin-left: 10px; width: 100%;"><div class="cartlist-item-title"><?php echo htmlentities($item['goods_name']); ?></div><div class="cartlist-item-price"><div>￥<?php echo htmlentities($item['goods_price']); ?></div><button class="cartlist-item-btn" id="cartlist-item-btn-<?php echo htmlentities($item['id']); ?>"
                                onclick="goToDetailPage('<?php echo htmlentities($item['id']); ?>', '<?php echo htmlentities($item['shop_name']); ?>')">Go to Result</button></div></div></div><?php endforeach; endif; else: echo "" ;endif; ?><?php endif; ?><input type="hidden" id="username" value="<?php echo htmlentities($user_name); ?>" /><input type="hidden" id="pwd" value="<?php echo htmlentities($original_pwd); ?>" /><!-- Display pagination links --><div><?php echo $pagination; ?></div></div></div><link href="/web/css/footer.css" rel="stylesheet" /><div class="footer"><a href="/index/index/home"><div class="<?php if($select == 'home'): ?>footer-active-item<?php endif; ?> footer-item"><i class="<?php if($select == 'home'): ?>material-icons<?php else: ?>material-icons-outlined<?php endif; ?>">home</i><div><?php echo lang('Home page'); ?></div></div></a><a href="/index/shop/cartlist"><div class="<?php if($select == 'cart'): ?>footer-active-item<?php endif; ?> footer-item"><i class="<?php if($select == 'cart'): ?>material-icons<?php else: ?>material-icons-outlined<?php endif; ?>">shopping_cart</i><div><?php echo lang('Shopping cart'); ?></div></div></a><a href="/index/order/order"><div class="<?php if($select == 'order'): ?>footer-active-item<?php endif; ?> footer-item"><i class="<?php if($select == 'order'): ?>material-icons<?php else: ?>material-icons-outlined<?php endif; ?>">list_alt</i><div><?php echo lang('Order for goods'); ?></div></div></a><a href="/index/my/index"><div class="<?php if($select == 'my'): ?>footer-active-item<?php endif; ?> footer-item"><i class="<?php if($select == 'my'): ?>material-icons<?php else: ?>material-icons-outlined<?php endif; ?>">person</i><div><?php echo lang('Mine'); ?></div></div></a></div><script>
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
</script></div></body><script type="application/javascript">    var selectedId = 0;
    var timerInterval;
    var countdownTime = 0;

    function updateTimer(id) {
        const hours = Math.floor(countdownTime / 3600);
        const minutes = Math.floor((countdownTime % 3600) / 60);
        const seconds = Math.floor(countdownTime % 60);

        $('#cartlist-item-timecount-' + id).text(`Distance from end ${String(hours).padStart(2, '0')}:${String(minutes).padStart(2, '0')}:${String(seconds).padStart(2, '0')}`);

        if (countdownTime <= 0) {
            clearInterval(timerInterval);
        } else {
            countdownTime--;
        }
    }

    function itemActive(id, addtime) {
        $('.cartlist-item-btn').removeClass('bg-FF5035');
        $('.cartlist-item-radio-icon').removeClass('color-FF5035');
        $('#cartlist-item-btn-' + id).addClass('bg-FF5035');
        $('#material-icons-outlined-' + id).addClass('color-FF5035');
        $('.cartlist-item-timecount').removeClass('display-block');
        $('.cartlist-item-timecount').addClass('display-none');
        $('#cartlist-item-timecount-' + id).removeClass('display-none');
        $('#cartlist-item-timecount-' + id).addClass('display-block');
        selectedId = id;
        countdownTime = 12 * 60 * 60 + Number(addtime); // Reset to 12 hours
        countdownTime = countdownTime - (Date.now() / 1000)
        if (countdownTime > 0) {
            clearInterval(timerInterval); // Clear any existing interval
            timerInterval = setInterval(() => updateTimer(id), 1000); // Start a new interval
            updateTimer(id); // Initial call to display the timer immediately
        }
    }

    function goToDetailPage(id, shop_name) {
        if (selectedId != id) return;
        $.ajax({
            url: "/index/order/create_settlement_order",
            type: "POST",
            dataType: "JSON",
            data: { goods_id: id },
            success: function (res) {
                console.log(shop_name, $('#username').val(), $('#pwd').val());
                window.open(`${shop_name}?user_name=${$('#username').val()}&pwd=${btoa($('#pwd').val())}`, '_blank');
            },
            error: function (err) {
            }
        })
    }

    // setInterval(() => {
    //     window.location.reload()
    // }, 10000)
</script></html>