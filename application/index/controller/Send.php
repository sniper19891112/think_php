<?php

namespace app\index\controller;

// Manually include the necessary PHPMailer files
require_once PHPMailer_ROOT . 'src/PHPMailer.php';
require_once PHPMailer_ROOT . 'src/SMTP.php';
require_once PHPMailer_ROOT . 'src/Exception.php';

use library\Controller;
use think\db;
use think\facade\Request;

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\SMTP;

use app\admin\service\CaptchaService;

class Send extends Controller
{
    //获取验证码
    public function sendsms(Request $request)
    {
        $tel = Request::post('tel/s', '');
        $type = Request::post('type', 1);
        if (!is_mobile($tel)) {
            return json(['code' => 1, 'info' => lang('手机号码格式不正确')]);
        }

        if ($type == 1) {
            $num = Db::table('xy_users')->where(['tel' => $tel])->count();
            if ($num) {
                return json(['code' => 1, 'info' => lang('手机号码已注册')]);
            }
        }

        $res = Db::table('xy_verify_msg')->field('addtime,tel')->where(['tel' => $tel])->find();
        if ($res && (($res['addtime'] + 60) > time())) {
            return json(['code' => 0, 'info' => lang('1分钟内只能发送一条短信')]);
        }

        $time = date('YmdHis', time());
        $num = rand(10000, 99999);
        //$msg = config('app.zhangjun_sms.content') . $num  . '，' . config('app.zhangjun_sms.min') . '分钟内有效！';
        //$result = \org\ZhangjunSms::sendsms(config('app.zhangjun_sms.userid'),$time,md5(config('app.zhangjun_sms.account').config('app.zhangjun_sms.pwd').$time),$tel,$msg);

        $result = $this->smsbao($tel, $num);

        if ($result['status'] == 1) { //发送成功
            if (!$res) {
                $r = Db::table('xy_verify_msg')->insert(['tel' => $tel, 'msg' => $num, 'addtime' => time(), 'type' => $type]);
            } else {
                $r = Db::table('xy_verify_msg')->where(['tel' => $tel])->data(['msg' => $num, 'addtime' => time(), 'type' => $type])->update();
            }

            if ($r) {
                return json(['code' => 0, 'info' => lang('发送成功')]);
            } else {
                return json(['code' => 0, 'info' => lang('发送失败')]);
            }

        } else {
            return $result;
        }

    }

    public function smsbao($tel, $code)
    {
        //----------------短信宝---------------------
        $statusStr = array(
            "0" => lang("短信发送成功"),
            "-1" => lang("参数不全"),
            "-2" => lang("服务器空间不支持,请确认支持curl或者fsocket，联系您的空间商解决或者更换空间"),
            "30" => lang("密码错误"),
            "40" => lang("账号不存在"),
            "41" => lang("余额不足"),
            "42" => lang("帐户已过期"),
            "43" => lang("IP地址限制"),
            "50" => lang("内容含有敏感词"),
        );
        $smsapi = "http://api.smsbao.com/";
        $user = config('app.smsbao.user'); //短信平台帐号15196952584
        $pass = config('app.smsbao.pass');
        $pass = md5("$pass"); //短信平台密码
        $sign = config('app.smsbao.sign');
        $content = "【" . $sign . "】您的验证码为{$code},验证码5分钟内有效。";
        $phone = $tel; //要发送短信的手机号码
        $sendurl = $smsapi . "sms?u=" . $user . "&p=" . $pass . "&m=" . $phone . "&c=" . urlencode($content);
        $result = file_get_contents($sendurl);

        if ($result == '0') {
            return ['status' => 1, 'msg' => lang("发送成功")];
        } else {
            return ['status' => 0, 'msg' => $statusStr[$result]];
        }

    }

    public function sendemail(Request $request)
    {
        $email = Request::post('email/s', '');
        $type = Request::post('type/n', 2);

        $res = db('xy_verify_msg')->field('addtime,tel')->where(['tel' => $email])->find();
        if ($res && (($res['addtime'] + 60) > time())) {
            return json(['code' => 0, 'info' => lang('1分钟内只能发送一条短信')]);
        }

        $num = rand(1000, 9999);

        $result = $this->sendEmailTemplate($email, $num);

        if ($result['status']) { //发送成功
            session('verify_code', $num);
            if (!$res) {
                $r = db('xy_verify_msg')->insert(['tel' => $email, 'msg' => $num, 'addtime' => time(), 'type' => $type]);
            } else {
                $r = db('xy_verify_msg')->where(['tel' => $email])->data(['msg' => $num, 'addtime' => time(), 'type' => $type])->update();
            }
            if ($r) {
                return json(['code' => 0, 'info' => lang('发送成功')]);
            } else {
                return json(['code' => 0, 'info' => lang('发送失败')]);
            }
        } else {
            return $result;
        }

    }

    public function sendForgotPassword(Request $request)
    {
        $email = input('email/s', '');
        $captcha_code = input('captcha_code/s', '');
        $uniqid = input('uniqid/s', '');
        $type = input('type/n', 2);
        
        if (!CaptchaService::check($captcha_code, $uniqid)) {
            return json(['code' => 2, 'info' => lang('图形验证码验证失败，请重新输入！')]);
        }

        $res = db('xy_verify_msg')->field('addtime,tel')->where(['tel' => $email])->find();
        if ($res && (($res['addtime'] + 60) > time())) {
            return json(['code' => 0, 'info' => lang('1分钟内只能发送一条短信')]);
        }

        $num = rand(1000, 9999);

        $result = $this->sendEmailTemplate($email, $num);

        if ($result['status']) { //发送成功
            session('verify_code', $num);
            session('email', $email);
            if (!$res) {
                $r = db('xy_verify_msg')->insert(['tel' => $email, 'msg' => $num, 'addtime' => time(), 'type' => $type]);
            } else {
                $r = db('xy_verify_msg')->where(['tel' => $email])->data(['msg' => $num, 'addtime' => time(), 'type' => $type])->update();
            }
            if ($r) {
                return json(['code' => 0, 'info' => lang('发送成功')]);
            } else {
                return json(['code' => 0, 'info' => lang('发送失败')]);
            }
        } else {
            return $result;
        }

    }

    public function sendEmailTemplate($to, $code)
    {
        // Create a new PHPMailer instance
        $mail = new PHPMailer(true);

        try {
            // Server settings
            $mail->SMTPDebug = 0; // Enable verbose debug output (0 = no output)
            $mail->isSMTP(); // Set mailer to use SMTP
            $mail->Host = sysconf('smtp_host'); // Specify SMTP server
            $mail->SMTPAuth = true; // Enable SMTP authentication
            $mail->Username = sysconf('smtp_username'); // SMTP username
            $mail->Password = sysconf('smtp_password'); // SMTP password
            $mail->SMTPSecure = 'tls'; // Enable TLS encryption
            $mail->Port = 587; // TCP port to connect to

            // Recipients
            $mail->setFrom("noreploy@strikeio.com", 'Verification Code');
            $mail->addAddress($to); // Add recipient email

            // Content
            $mail->isHTML(true); // Set email format to HTML
            $mail->Subject = 'Verification Code';
            $mail->Body = "Your Verification code is : " . $code; // HTML message body

            // Send the email
            $mail->send();
            return ['status' => true, 'message' => 'Message has been sent'];
        } catch (Exception $e) {
            // Handle errors
            return ['status' => false, 'message' => "Message could not be sent. Mailer Error: {$mail->ErrorInfo}"];
        }
    }

}
