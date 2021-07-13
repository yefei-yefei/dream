<?php
include('./public.php');
// 收集数据
$mony=$_GET['mony'];
$phone=$_GET['phone'];
//查询数据库
//得到用户的余额
$sql="select * from userinfo where phone='$phone'";
$res=$conn->query($sql);
$row=$res->fetch_assoc();
//用户的余额
$user_prices=$row['price'];
// echo $user_prices;
//用户余额
$user_prices=$user_prices+$mony;
//用户
$sql2="update userinfo set price='$user_prices' where phone='$phone'";
$res2=$conn->query($sql2);
if($res2){
	$myArray= (object) array('code' =>'ok','prices'=>$user_prices);
}else{
	echo 'no';
}
echo json_encode($myArray);
?>