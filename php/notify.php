<?php
include('./public.php');
$postXml = $GLOBALS["HTTP_RAW_POST_DATA"]; //接收微信参数
if (empty($postXml)) {
    return false;
}
//将xml格式转换成数组
function xmlToArray($xml) {
    //禁止引用外部xml实体 
    libxml_disable_entity_loader(true);
    $xmlstring = simplexml_load_string($xml, 'SimpleXMLElement', LIBXML_NOCDATA);
    $val = json_decode(json_encode($xmlstring), true);
    return $val;
}
$attr = xmlToArray($postXml);
$total_fee = $attr[total_fee];
$open_id = $attr[openid];
$out_trade_no = $attr[out_trade_no];
$time = $attr[time_end];
echo $total_fee.'<br>'.$open_id.'<br>'.$out_trade_no.'<br>'.$time;
?>