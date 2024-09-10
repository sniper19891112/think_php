<?php /*a:1:{s:67:"F:\xampp\htdocs\think_php\application\index\view\user\register.html";i:1725891552;}*/ ?>
<!DOCTYPE html><html><head><meta charset="utf-8" /><meta name="viewport"
        content="width=device-width,user-scalable=no,initial-scale=1,maximum-scale=1,minimum-scale=1" /><meta name="apple-mobile-web-app-capable" content="yes" /><meta content="telephone=yes" name="format-detection" /><meta name="apple-mobile-web-app-status-bar-style" content="white" /><meta name="x5-fullscreen" content="true" /><meta name="apple-touch-fullscreen" content="yes" /><title><?php echo lang('注册'); ?></title><link rel="stylesheet" href="/statics/css/global.css" /><link rel="stylesheet" href="/web/css/register.css" /><link rel="stylesheet" href="/static_new/css/public.css"><link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"><link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined"><script charset="utf-8" src="/static_new/js/jquery.min.js"></script><script charset="utf-8" src="/static_new/js/dialog.min.js"></script><script charset="utf-8" src="/static_new/js/common.js"></script></head><body style="font-size: 12px;"><div id="app"><div class="register-container"><div class="register-header"><a href="/index/user/login"><i class="material-icons" style="cursor: pointer;">close</i></a></div><div class="register-title-1">Register now</div><div class="register-title-2">Register now to continue</div><div class="register-title-3">
                Email registration
            </div><form action="" id="register-form"><div class="register-email-input-form"><i class="material-icons-outlined">mail</i><input class="register-email-input" type="text" name="email"
                        placeholder="Enter your email account" /></div><div class="register-code-input-form"><i class="material-icons-outlined">verified_user</i><input class="register-code-input" type="text" name="verify_code" placeholder="Enter verify code" /><div class="register-code-text get-code">Get verification code</div></div><div class="register-password-input-form"><i class="material-icons-outlined">lock</i><input class="register-password-input" type="password" name="pwd" placeholder="Enter password" /><i class="material-icons-outlined icon-eye" style="cursor: pointer;">visibility</i></div><div class="register-remember-password-form"><label class="register-remember-me-text"><input type="checkbox" name="remember_me" checked />
                        Remember me
                    </label></div><div class="register-referrer-input-form"><i class="material-icons-outlined">person</i><input class="register-referrer-input" type="text" name="invite_code"
                        placeholder="Enter referrer" /></div><div class="register-btn-form"><button class="register-btn form-buttom">Register now</button></div></form></div></div></body><script type="application/javascript">
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
    function setdefault(lang) {
        var expires = new Date();
        expires.setTime(expires.getTime() + 10 * 24 * 60 * 60 * 1000);
        document.cookie = "think_var=" + escape(lang) + ";expires=" + expires.toGMTString();
    }
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
    //setdefault('en-us');
    var countdown = 60;
    var flag = true;
    var loading = null;
    /*检查表单*/
    function check() {
        if ($("input[name=pwd]").val() == '') {
            $(document).dialog({ infoText: "<?php echo lang('请输入登录密码'); ?>" });
            return false;
        }
        <?php if(sysconf('isopeninvitecode')): ?>
        if ($("input[name=invite_code]").val() == '') {
            $(document).dialog({ infoText: "<?php echo lang('请输入邀请码'); ?>" });
            return false;
        }
        <?php endif; ?>
        return true;
    }

    /*手机号码验证*/
    function check_phone() {
        if ($("input[name=user_name]").val() == '') {
            $(document).dialog({ infoText: "<?php echo lang('请输入用户名'); ?>" });
            return false;
        }
        var myreg = /^([0-9|A-Z|a-z]|[\u4E00-\u9FA5\uF900-\uFA2D]){2,12}$/;
        if (!myreg.test($("input[name=user_name]").val())) {
            $(document).dialog({ infoText: "<?php echo lang('用户名输入错误,要求2-12位字母或数字'); ?>" });
            return false;
        }
        return true;
    }

    /*验证码倒计时*/
    function time_down(obj) {
        if (countdown == 0) {
            flag = true;
            // obj.text("获取验证码");
            obj.text("Get verification code");
            countdown = 60;
            return;
        } else {
            flag = false;
            obj.text(countdown + "s");
            countdown--;
        }
        setTimeout(function () { time_down(obj) }, 1000);
    }

    /*获取验证码*/
    $(".get-code").on('click', function () {
        alert("dsfdsfsdf");
        console.log(flag);
        if (!flag) return;
        $.ajax({
            url: '/index/send/sendemail',
            data: { 'email': $("input[name=email]").val(), 'type': 2 },
            type: 'POST',
            success: function (data) {
                if (data.code == 0) {
                    $(document).dialog({ infoText: data.info });
                    time_down($(".get-code"));
                } else {
                    $(document).dialog({ infoText: data.info });
                }
            },
            error: function (error) {
                console.log(error);
            }
        });
    })

    /*提交*/
    $(".form-buttom").on('click', function () {
        if (check()) {
            $.ajax({
                url: "<?php echo url('do_register'); ?>",
                data: $("#register-form").serialize(),
                type: 'POST',
                beforeSend: function () {
                    loading = $(document).dialog({
                        type: 'notice',
                        infoIcon: '/static_new/img/loading.gif',
                        infoText: "<?php echo lang('正在加载中'); ?>",
                        autoClose: 0
                    });
                },
                success: function (data) {
                    loading.close();
                    console.log(data);
                    if (data.code == 0) {
                        $(document).dialog({ infoText: "<?php echo lang('注册成功'); ?>" });
                        setTimeout(function () {
                            location.href = "<?php echo url('user/login'); ?>"
                        }, 1500);
                    } else {
                        $(document).dialog({ infoText: data.info });
                        setTimeout(function () {
                            location.reload();
                        }, 2000);
                    }
                }
            });
        }
        return false;
    })
</script></html>