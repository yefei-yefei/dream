<?php
include('./public.php');
//点击赠送的时候，，传一个当前的openid跟选手的id
$openid=$_GET['openid'];//用户标识
$id=$_GET['id'];//  选手的id   
$gift_prices=$_GET['gift_prices'];//得到礼物的钱 直接等于票数
//得到用户的余额
$sql="select * from userinfo where phone='$openid'";
$res=$conn->query($sql);
$row=$res->fetch_assoc();
//用户的余额
$user_prices=$row['price'];
//根据选手的id   得到当前的票数    
$sql1="select * from dream_players where id='$id'";
$res1=$conn->query($sql1);
$row1=$res1->fetch_assoc();
//选手的票数
$player_vote=$row1['player_vote'];
//修改信息
//选手的票数
$player_vote=$player_vote+$gift_prices;
// echo $user_prices.'<br>'.$player_vote;
// 更新数据库
//用户余额
$user_prices=$user_prices-$gift_prices;
//用户
$sql2="update userinfo set price='$user_prices' where phone='$openid'";
$res2=$conn->query($sql2);
//选手
$sql3="update dream_players set player_vote='$player_vote' where id='$id'";
$res3=$conn->query($sql3);
if($res3){
	$myArray= (object) array('code' =>'ok','prices'=>$user_prices);
}
echo json_encode($myArray);
?>