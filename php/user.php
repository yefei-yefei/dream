<?php
include('./public.php');
date_default_timezone_set('prc'); //中国北京时间
// 点击投票
$user_openid=$_GET['user_openid'];//用户标识   唯一的 手机号
$players_id=$_GET['players_id'];//选手标识
// $time=time();
// echo date('d',strtotime('2021-5-29'));
$d=date('d',strtotime('now'));
// $d=date('d',strtotime('2021-5-30'));
// echo $d;
//点击投票，，判断是否点击过
//如果点击过 判断时间是否跟存起来的时间是同一天，是的话不让投，不是的话修改投票信息  选手，修改的时间
$sql="select * from user where user_openid='$user_openid'";
$res=$conn->query($sql);
// 判断是否有记录
if($res->num_rows){//有记录
	$sql="select * from user where user_openid='$user_openid'";
	$res=$conn->query($sql);
	$row=$res->fetch_assoc();
	// echo $row['times'];
	if($row['times']!=$d){
		//不等于$d的话修改记录
		$sql="update user set players_id='$players_id',times='$d' where user_openid='$user_openid'";
		$res=$conn->query($sql);
		if($res){//成功的话 找到选手表 将其投票数加1
			$sql="select * from dream_players where id='$players_id'";
			$res=$conn->query($sql);
			$row=$res->fetch_assoc();
			$vote=$row['player_vote']+1;
			// echo $vote;
			//更新数据
			$sql1="update dream_players set player_vote='$vote' where id='$players_id'";
			$res1=$conn->query($sql1);
			if($res1){
				echo 'ok';//更新成功，说明投票成功
			}else{
				echo 'no';//更新失败  说明投票失败
			}
		}
	}else{
		//如果等于的话，说明已经投过了
		echo 'no';//你已经投过票了
	}
}else{//没有记录
	// 插入一条记录
	$sql="insert into user (user_openid,players_id,times,prices) values('$user_openid','$players_id','$d','0')";
	$res=$conn->query($sql);
	if($res){//插入成功的话
		echo 'ok';//表示投票成功
	}
}
?>