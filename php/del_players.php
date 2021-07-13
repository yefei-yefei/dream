<?php
	// 删除选手
	include('./public.php');
	// 接收参数
	$id=$_GET['id'];
	$sql="delete from dream_players where id='$id'";
	$res=$conn->query($sql);
	if($res){
		echo 'ok';
	}else{
		echo 'no';
	}
?>