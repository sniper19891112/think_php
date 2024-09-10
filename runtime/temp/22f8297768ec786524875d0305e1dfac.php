<?php /*a:1:{s:64:"F:\xampp\htdocs\think_php\application\index\view\user\login.html";i:1725891478;}*/ ?>
<!DOCTYPE html><html><head><meta charset="utf-8" /><meta name="viewport"
        content="width=device-width,user-scalable=no,initial-scale=1,maximum-scale=1,minimum-scale=1" /><meta name="apple-mobile-web-app-capable" content="yes" /><meta content="telephone=yes" name="format-detection" /><meta name="apple-mobile-web-app-status-bar-style" content="white" /><meta name="x5-fullscreen" content="true" /><meta name="apple-touch-fullscreen" content="yes" /><title><?php echo lang('登录'); ?></title><link rel="stylesheet" href="/statics/css/global.css" /><link rel="stylesheet" href="/web/css/login.css" /><link rel="stylesheet" href="/static_new/css/public.css"><link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"><link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined"><script charset="utf-8" src="/static_new/js/jquery.min.js"></script><script charset="utf-8" src="/static_new/js/dialog.min.js"></script><script charset="utf-8" src="/static_new/js/common.js"></script></head><body><div id="app"><div class="login-container"><div class="login-header"><a href="/index/user/register"><i class="material-icons" style="cursor: pointer;">close</i></a></div><div class="login-title-1">Email login</div><div class="login-title-2">Enter your account number to continue</div><div class="login-title-3">
                Log in
            </div><div class="login-email-input-form"><i class="material-icons-outlined">mail</i><input class="login-email-input" name="email" placeholder="Enter your email account" type="text"/></div><div class="login-password-input-form"><i class="material-icons-outlined">lock</i><input class="login-password-input" name="pwd" type="password" placeholder="Enter password" /><i class="material-icons-outlined icon-eye" style="cursor: pointer;">visibility</i></div><div class="login-forgot-password-form"><label class="login-remember-me-text"><input type="checkbox" name="remember_me" checked/>
                    Remember me
                </label><a href="/index/user/forgot_password"><div class="login-forgot-password-text">Forgot password</div></a></div><div class="login-btn-form"><button class="login-btn" onclick="login()">Log in</button><div style="margin-top: 8px; text-align: center;"><span>Don't have an account yet?&nbsp;</span><a href="/index/user/register"><span style="font-size: 14px; color: #FF5035; cursor: pointer;">Register now</span></a></div></div></div></div></body><script type="application/javascript">
    function openlang() {
        document.getElementById("lang").style.display = "";
    }
    function closelang() {
        document.getElementById("lang").style.display = "none";

    }
    function changlang(lang) {
        var data = { 'lang': lang };
        console.log(data);
        $.get("<?php echo url('Index/changelang'); ?>", data, function () { location.reload(); })
    }
    function check() {
        if ($("input[name=email]").val() == '' || $("input[name=pwd]").val() == '') {
            $(document).dialog({ infoText: '<?php echo lang("请输入账号/ 密码"); ?>' });
            return false;
        }
        return true;
    }
    /*监听账号input*/
    $("input[name=email]").bind("input propertychange", function () {
        if ($(this).val() !== '') {
            $('.icon-delete').show();
        } else {
            $('.icon-delete').hide();
        }
    });
    /*点击删除icon*/
    $(".icon-delete").on('click', function () {
        $("input[name=email]").val('');
        $('.icon-delete').hide();
    })
    /*显示or隐藏密码*/
    $(".icon-eye").on('click', function () {
        var input = $("input[name=pwd]");
        var icon = $(this);

        // Toggle the input type between password and text
        if (input.attr("type") === 'password') {
            input.attr('type', 'text');
            icon.text('visibility_off'); // Change the icon to "visibility_off"
        } else {
            input.attr('type', 'password');
            icon.text('visibility'); // Change the icon back to "visibility"
        }
    });
    function login() {
        if (check()) {
            var loading = null;
            var email = $("input[name=email]").val();
            var pwd = $("input[name=pwd]").val();
            var remember_me = $("input[name=remember_me]").is(":checked");
            $.ajax({
                url: "<?php echo url('do_login'); ?>",
                data: { email: email, pwd: pwd, remember_me: remember_me },
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
                    //loading.close();
                    if (data.code == 0) {
                        $(document).dialog({ infoText: data.info });
                        setTimeout(function () {
                            location.href = "<?php echo url('index/home'); ?>"
                        }, 2000);
                    } else {
                        loading.close();
                        if (data.info) {
                            $(document).dialog({ infoText: data.info });
                        } else {
                            $(document).dialog({ infoText: "<?php echo lang('网络不太稳定,请您在信号较好的地方再试'); ?>!", autoClose: 2000 });
                        }
                    }
                },
                error: function (data) {
                    loading.close();
                }
            });
        }
    }
    function togglePassword() {
        var passwordInput = document.getElementById('passwordInput');
        var toggleIcon = document.getElementById('togglePasswordIcon');

        // Toggle password visibility
        if (passwordInput.type === 'password') {
            passwordInput.type = 'text'; // Show password
            toggleIcon.textContent = 'visibility_off'; // Change icon to "visibility_off"
        } else {
            passwordInput.type = 'password'; // Hide password
            toggleIcon.textContent = 'visibility'; // Change icon back to "visibility"
        }
    }
</script></html>