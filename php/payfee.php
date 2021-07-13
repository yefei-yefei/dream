<?php
session_start();
// include('/public.php');
include 'WeixinPay.php';
$openid=file_get_contents('emails.txt');
$appid='wxedb153461ccc70cc';// 开发者小程序的appid
$mch_id='1610778729';//商户号
$key='673bbf7ee6075a7fcfd6b0ab86d7c8dc';// 开发者小程序的密钥
$out_trade_no = $mch_id. time();
$total_fee = $_POST['fee'];// 消费金额
// $total_fee ='0.01';
if(empty($total_fee)) //押金
{
    $body = "充值押金";
    $total_fee = floatval(99*100);
}
 else {
     $body = "充值余额";
     $total_fee = floatval($total_fee*100);
 }
$weixinpay = new WeixinPay($appid,$openid,$mch_id,$key,$out_trade_no,$body,$total_fee);
$return=$weixinpay->pay();
echo json_encode($return);
?>