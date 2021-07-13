<?php
// 点击选手 获取全部信息
	include('./public.php');
	$id=$_GET['id'];
	$sql="select * from dream_players where id='$id'";    
	$res=$conn->query($sql);
	while($row=$res->fetch_assoc()){
		// 多个图片
		$imgs=explode(",",$row['imgUrls']);
		unset($row['imgUrls']);
		$row['imgUrls']=$imgs;//图片
		$s=null;
		foreach($row['imgUrls'] as $value){
			$s.=$URL.$value.',';
		}
		$s = substr($s,0,strlen($s)-1);
		$s = explode(',',$s);
		$row['imgUrls']=$s;
		// $row['player_img']=$imgs;//图片
		// 单个图片
		// $s=$URL.$row['player_img'];
		$row['player_voice']=$URL.$row['player_voice'];//音频
		$row['player_video']=$URL.$row['player_video'];//视频
		$arr [] =$row;
	}
	// echo $vote;
	$sql1="select * from dream_players";
	$res1=$conn->query($sql1);
	while($row1=$res1->fetch_assoc()){
		$arr1 []=$row1;
	}
	$order_col=array_column($arr1,'player_vote');
	array_multisort($order_col,SORT_DESC,$arr1);//排序，按照总利润排序
	// print_r($order_col);
	// $key = array_search($id, $arr1[id]);
	foreach($arr1 as $key=>$val){
		// echo $val['id'];
		if($val['id']==$id){
			$ranking=$key+1;
		}
	}
	$arr[0]['ranking']=$ranking;
	echo json_encode($arr);
?>