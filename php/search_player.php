<?php
// 传选手名称/艺名/编号 可查询到对应数据
	include('./public.php');
	$name=$_GET['name'];
	$sql="select * from dream_players where player_serial='$name' or player_name='$name' or player_stage='$name'";    
	$res=$conn->query($sql);
	$arr=[];
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
		// // $row['player_img']=$imgs;//图片
		// // 单个图片
		// $s=$URL.$row['player_img'];
		$row['player_voice']=$URL.$row['player_voice'];//音频
		$row['player_video']=$URL.$row['player_video'];//视频
		$arr [] =$row;
	}
	if(count($arr)==0){
		echo 'err';
	}else{
		echo json_encode($arr);
	}
	
	
?>