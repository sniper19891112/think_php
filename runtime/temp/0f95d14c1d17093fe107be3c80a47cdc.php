<?php /*a:2:{s:64:"F:\xampp\htdocs\think_php\application\index\view\shop\index.html";i:1725951305;s:66:"F:\xampp\htdocs\think_php\application\index\view\public\floor.html";i:1725951369;}*/ ?>
<!DOCTYPE html><html lang="zh-CN"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta http-equiv="X-UA-Compatible" content="IE=edge"><meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, viewport-fit=cover"><title><?php echo sysconf('app_name'); ?></title><link rel="stylesheet" href="/static_new/css/index.css"><link rel="stylesheet" href="/static_new/css/login.css"><link rel="stylesheet" href="/static_new/css/public.css"><link rel="stylesheet" href="/static_new/css/icon-font.css"><link rel="stylesheet" href="/static_new/css/swiper.min.css"><script charset="utf-8" src="/static_new/js/jquery.min.js"></script><script charset="utf-8" src="/static_new/js/swiper.min.js"></script><link rel="stylesheet" href="/static_new/css/theme.css"><style>
        .business>a>li {
            width: 20%;
            margin-bottom: 10px;
        }

        .header {
            width: 100%;
            color: #fff;
            position: fixed;
            top: 0;
            z-index: 99;
            position: relative;
        }

        .header>p {
            width: 96%;
            margin: 0 2%;
            height: 46px;
            line-height: 46px;
            text-align: center;
        }

        .my-meun {
            overflow: hidden;
            margin-right: 15px;
            margin-left: 15px;
            border-radius: 10px;
            margin-top: 10px;
        }

        .add {
            position: absolute;
            width: auto;
            line-height: 46px;
            top: 0;
            bottom: 0;
            right: .3rem;
            margin: auto;
            /*background-image: url(/public/img/add.png);*/
            background-size: 80%;
            background-repeat: no-repeat;
        }


        /*----------------------*/
        .index_rwlb {
            width: 96%;
            margin-left: 2%;
            height: 100%;
            background: #fff;
            margin-bottom: 0px;
            margin-top: 20px;
        }

        .index_tjrw {
            width: 100%;
            height: 40px;
            text-align: left;
            font-size: 16px;
            font-weight: bold;
            line-height: 30px;
            background-size: 25px 25px;
            box-sizing: border-box;
        }

        .fui-goods-item {
            width: 47.25%;
            float: left;
            border-bottom: 0;
            background: none;
            padding: 0.25rem;
            display: block;
        }

        .fui-goods-item .image {
            width: 100%;
            height: 0;
            overflow: hidden;
            margin: 0;
            padding-bottom: 100%;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
        }

        .fui-goods-item .detail {
            -webkit-box-flex: 1;
            -webkit-flex: 1;
            -ms-flex: 1;
            flex: 1;
            background: #fff;
            padding-left: .5rem;

            padding: 0.5rem;
            overflow: hidden;
        }

        .fui-goods-item .detail .name {
            height: 1.7rem;
            overflow: hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            font-size: 0.65rem;
            line-height: 0.9rem;


        }

        .fui-goods-item .detail .price {
            position: relative;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -webkit-align-items: center;
            -ms-flex-align: center;
            align-items: center;
            font-size: 0.7rem;
            margin-top: 0.3rem;
        }

        .fui-goods-item .detail .price .text {
            -webkit-box-flex: 1;
            -webkit-flex: 1;
            -ms-flex: 1;
            flex: 1;
            color: #ff5555;
            font-size: 0.8rem;
        }

        .fui-goods-item .detail .price .buy {
            display: inline-block;
            height: 1.1rem;
            color: #ff5555;
            line-height: 1rem;
            border-radius: 0;
            background: #fff;
            padding: 0rem 0.35rem;
            width: auto;
            border-radius: 0.1rem;
            border: 1px solid transparent;
        }


        .image.triangle:before {
            content: attr(data-text);
            position: absolute;
            width: 3.39rem;
            height: 2.4rem;
            background: #ff5555;
            z-index: 0;
            transform-origin: left bottom;
            -webkit-transform-origin: left bottom;
            transform: rotate(-45deg);
            -ms-transform: rotate(-45deg);
            -moz-transform: rotate(-45deg);
            -webkit-transform: rotate(-45deg);
            -o-transform: rotate(-45deg);
            color: #fff;
            line-height: 3.7rem;
            font-size: 0.6rem;
            text-align: center;
        }
    </style><script>
        (function () {
            var dw = document.createElement("script");
            dw.src = "/static_new/js/pack.js?e9154e78c011e7e0eba17228a1621937"
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(dw, s);
        })()
    </script><script type="application/javascript">
        window.onpageshow = function (event) {
            if (event.persisted) {
                window.location.reload();
            }
        };
    </script></head><body id="apprun"><div class="header"><div class="goback"><span class="icon iconfont icon-fanhui"></span><a href="javascript:history.go(-1)"><?php echo lang('返回'); ?></a></div><p><?php echo lang('商城'); ?></p><div class="add" style="font-size: 12px" onclick="location.href=`/`"><?php echo lang('回到首页'); ?></div></div><div class="index-body" style="margin-top: 10px"><div class="swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-ios"><div class="swiper-wrapper" style="transform: translate3d(-1191px, 0px, 0px); transition-duration: 0ms;"><?php if($banner): if(is_array($banner) || $banner instanceof \think\Collection || $banner instanceof \think\Paginator): $i = 0; $__LIST__ = $banner;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="swiper-slide swiper-slide-duplicate swiper-slide-next swiper-slide-duplicate-prev"
                    data-swiper-slide-index="<?php echo htmlentities($vo['id']); ?>" style="width: 397px;"><img src="<?php echo htmlentities($vo['image']); ?>"></div><div class="swiper-slide swiper-slide-prev swiper-slide-duplicate-next"
                    data-swiper-slide-index="<?php echo htmlentities($vo['id']); ?>" style="width: 397px;"><img src="<?php echo htmlentities($vo['image']); ?>"></div><?php endforeach; endif; else: echo "" ;endif; else: ?><?php endif; ?></div><div class="swiper-pagination swiper-pagination-bullets"><span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span><span
                    class="swiper-pagination-bullet"></span></div><span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div><div class="notice"><img src="/static_new/img/notice.png"><p onclick=""><marquee><?php echo $gundong; ?></marquee></p></div><ul class="business"><?php if($shoplist): if(is_array($cate) || $cate instanceof \think\Collection || $cate instanceof \think\Paginator): $i = 0; $__LIST__ = $cate;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><a href="/index/shop/goodslist?cid=<?php echo htmlentities($vo['id']); ?>"><li><img src="<?php echo htmlentities($vo['cate_pic']); ?>" alt="" onerror="this.src='/static_new/img/cart.png'"><p><?php echo htmlentities($vo['name']); ?></p></li></a><?php endforeach; endif; else: echo "" ;endif; else: ?><a href="/index/shop/gooslist"><li><img src="/static_new/img/cart.png" alt=""><p><?php echo lang('全部商品'); ?></p></li></a><?php endif; ?><div class="clear"></div></ul><div><div class="index_rwlb task_index_rwlbfl" style="background: #f4f4f4"><p class="index_tjrw"><?php echo lang('推荐商品'); ?><a href="/index/shop/goodslist"
                        style="float: right;color: #9a9292;"><?php echo lang('更多'); ?> &gt; 　</a></p><?php if($shoplist): if(is_array($shoplist) || $shoplist instanceof \think\Collection || $shoplist instanceof \think\Paginator): $i = 0; $__LIST__ = $shoplist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><a class="fui-goods-item" data-goodsid="271" href="/index/shop/detail?id=<?php echo htmlentities($v['id']); ?>" data-type="271"
                    data-nocache="true" style="position: relative;"><div class="image triangle" data-text="<?php echo lang('推荐'); ?>" data-lazyloaded="true"
                        style="background-image:url(<?php echo htmlentities($v['goods_pic']); ?>);"></div><div class="detail"><div class="name" style="color: #000000;"><?php echo htmlentities($v['goods_name']); ?></div><p class="productprice noheight"></p><div class="price"><span class="text" style="color: #ff5555;"><p class="minprice">$<?php echo htmlentities($v['goods_price']); ?></p></span><span class="buy btn-1" style="border-color: #ff5555;color:  #ff5555"><?php echo lang('购买'); ?></span></div></div></a><?php endforeach; endif; else: echo "" ;endif; else: ?><?php endif; ?><div style="clear: both;"></div></div></div></div><link href="/web/css/footer.css" rel="stylesheet" /><div class="footer"><a href="/index/index/home"><div class="<?php if($select == 'home'): ?>footer-active-item<?php endif; ?> footer-item"><i class="<?php if($select == 'home'): ?>material-icons<?php else: ?>material-icons-outlined<?php endif; ?>">home</i><div><?php echo lang('Home page'); ?></div></div></a><a href="/index/shop/index"><div class="<?php if($select == 'cart'): ?>footer-active-item<?php endif; ?> footer-item"><i class="<?php if($select == 'cart'): ?>material-icons<?php else: ?>material-icons-outlined<?php endif; ?>">shopping_cart</i><div><?php echo lang('Shopping cart'); ?></div></div></a><div class="<?php if($select == 'order'): ?>footer-active-item<?php endif; ?> footer-item"><i class="<?php if($select == 'order'): ?>material-icons<?php else: ?>material-icons-outlined<?php endif; ?>">list_alt</i><div><?php echo lang('Order for goods'); ?></div></div><div class="<?php if($select == 'my'): ?>footer-active-item<?php endif; ?> footer-item"><i class="<?php if($select == 'my'): ?>material-icons<?php else: ?>material-icons-outlined<?php endif; ?>">person</i><div><?php echo lang('Mine'); ?></div></div></div><script>
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
</script><script charset="utf-8" src="/static_new/js/dialog.min.js"></script><script type="application/javascript">$(function () {
            var mySwiper = new Swiper('.swiper-container', {
                direction: 'horizontal',
                loop: true,
                autoplay: true,
                speed: 500,
                pagination: { el: '.swiper-pagination' },
                autoplayDisableOnInteraction: false,
            });
            var span = document.querySelectorAll('.business-tab li'), div = document.querySelectorAll('.tab-content');
            for (var i = 0; i < span.length; i++) {
                span[i].idx = i;
                span[i].onclick = function () {
                    for (var j = 0; j < div.length; j++) {
                        div[j].style.display = 'none';
                        span[j].classList.remove('active')
                    }
                    div[this.idx].style.display = 'block';
                    this.classList.add('active')
                }
            }
            function autoCount() {
                var bili = "<?php echo htmlentities($lixibao['bili']); ?>";
                var result = $("#money").val() * $("#day").val() * bili;
                $('.auto-count').text(result.toFixed(4))
            }

            $("#money").bind("input propertychange", function () {
                if ($(this).val() == '') {
                    $('.auto-count').text('<?php echo lang('自动计算'); ?>')
                } else {
                    autoCount()
                }
            });
            $("#day").bind("input propertychange", function () {
                if ($(this).val() == '') {
                    $('.auto-count').text('<?php echo lang('自动计算'); ?>')
                } else {
                    autoCount()
                }
            })
        })</script></body></html>