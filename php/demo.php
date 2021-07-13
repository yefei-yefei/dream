<?php
session_start();
include_once "wxBizDataCrypt.php";
$appid = 'wxedb153461ccc70cc';
$sercet='673bbf7ee6075a7fcfd6b0ab86d7c8dc';
// 收集的数据
$code=$_GET['code'];
// $encryptedData==$_GET['encryptedData'];
$url = 'https://api.weixin.qq.com/sns/jscode2session?appid='.$appid.'&secret='.$sercet.'&js_code=' . $code . '&grant_type=authorization_code';
$info = file_get_contents($url);//发送HTTPs请求并获取返回的数据，推荐使用curl
$json = json_decode($info);//对json数据解码
$arr = get_object_vars($json);
// 获取的密钥
$sessionKey = $arr['session_key'];
// 将openid和手机号存在session中
$iv = $_GET['iv'];
$encryptedData=urldecode($_GET["encryptedData"]);
$pc = new WXBizDataCrypt($appid, $sessionKey);
$errCode = $pc->decryptData($encryptedData, $iv, $data );
if ($errCode == 0) {
	// $phone = json_decode($data)->purePhoneNumber;
	// echo $phone;
    print($data . "\n");
	file_put_contents('emails.txt',$arr['openid']);
} else {
    print($errCode . "\n");
}
?>