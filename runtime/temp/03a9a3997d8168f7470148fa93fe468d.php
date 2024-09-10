<?php /*a:1:{s:74:"F:\xampp\htdocs\think_php\application\index\view\user\forgot_password.html";i:1725884516;}*/ ?>
<!DOCTYPE html><html><head><meta charset="utf-8" /><meta name="viewport"
        content="width=device-width,user-scalable=no,initial-scale=1,maximum-scale=1,minimum-scale=1" /><meta name="apple-mobile-web-app-capable" content="yes" /><meta content="telephone=yes" name="format-detection" /><meta name="apple-mobile-web-app-status-bar-style" content="white" /><meta name="x5-fullscreen" content="true" /><meta name="apple-touch-fullscreen" content="yes" /><title><?php echo lang('找回密码'); ?></title><link rel="stylesheet" href="/statics/css/global.css" /><link rel="stylesheet" href="/web/css/forgot_password.css" /><link rel="stylesheet" href="/static_new/css/public.css"><link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"><link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined"><script charset="utf-8" src="/static_new/js/jquery.min.js"></script><script charset="utf-8" src="/static_new/js/dialog.min.js"></script><script charset="utf-8" src="/static_new/js/common.js"></script></head><body><div id="app"><div class="forgot-container"><div class="forgot-header"><a href="/index/user/login"><i class="material-icons" style="cursor: pointer;">close</i></a></div><div class="forgot-title-1">Forgot password</div><div class="forgot-title-2">Enter the captCHA displayed in the text box to continue</div><div class="forgot-email-input-form"><i class="material-icons-outlined">mail</i><input class="forgot-email-input" type="mail" name="email" placeholder="Enter your email account" /></div><div class="forgot-captcha-input-form"><input class="forgot-captcha-input" type="text" name="captcha_code" placeholder="Enter code" /><img id="codeimg" data-refresh-captcha src="<?php echo htmlentities($captcha->getData()); ?>" class="forgot-captcha-img"><img src="/public/img/refresh.png" class="forgot-captcha-refresh" onclick="refreshCaptcha()" /><input id="uniqid" type="hidden" name="uniqid" value="<?php echo htmlentities($captcha->getUniqid()); ?>"></div><div class="forgot-btn-form"><button class="forgot-btn" onclick="submit()">Reset password</button></div></div></div></body><script type="application/javascript">    function refreshCaptcha() {
        $.getJSON("/admin/login.html?s=think/admin/captcha", function (data) {
            $("#codeimg").attr("src", data.data.image);
            $("#uniqid").val(data.data.uniqid)
        });
    }
    function check() {
        if ($("input[name=email]").val() == '' || $("input[name=captcha_code]").val() == '') {
            $(document).dialog({ infoText: '<?php echo lang("Please input email or code"); ?>' });
            return false;
        }
        return true;
    }
    function submit() {
        if (check()) {
            var loading = null;
            var email = $("input[name=email]").val();
            var captcha_code = $("input[name=captcha_code]").val();
            var uniqid = $("input[name=uniqid]").val();
            $.ajax({
                url: '/index/send/sendForgotPassword',
                data: { email: email, captcha_code: captcha_code, uniqid: uniqid },
                type: 'POST',
                beforeSend: function () {
                    loading = $(document).dialog({
                        type: 'notice',
                        infoIcon: '/static_new/img/loading.gif',
                        infoText: '<?php echo lang("正在加载中"); ?>',
                        autoClose: 0
                    });
                },
                success: function (data) {
                    loading.close();
                    if (data.code == 0) {
                        $(document).dialog({ infoText: data.info });
                        setTimeout(function () {
                            location.href = "<?php echo url('index/user/password_reset'); ?>"
                        }, 2000);
                    } else if (data.code == 2) {
                        $(document).dialog({ infoText: data.info });
                        refreshCaptcha();
                    } else {
                        loading.close();
                        if (data.info) {
                            $(document).dialog({ infoText: data.info });
                        } else {
                            $(document).dialog({ infoText: "<?php echo lang('网络不太稳定,请您在信号较好的地方再试'); ?>!", autoClose: 2000 });
                        }
                    }
                },
                error: function (error) {
                    loading.close();
                }
            });
        }
    }
</script></html>