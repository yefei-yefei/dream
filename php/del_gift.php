<?php
	// 删除礼物
	include('./public.php');
	// 接收参数
	$id=$_GET['id'];
	$sql="delete from gift where id='$id'";
	$res=$conn->query($sql);
	if($res){
		echo 'ok';
	}else{
		echo 'no';
	}
?>