<?php
// 根据票数来判断 所有选手
	include('./public.php');
	//每页从哪里开始，到哪里结束
	if(isset($_GET['page'])){
	        $page=$_GET['page'];  //传参代表的是第n页；
	}else{
	        $page=1;  //如果不传参默认是第一页；
	}
	$page_size=$_GET['page_size'];
	$start=($page-1)*$page_size;
		$sql="select * from dream_players";
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
			// 单个图片
			// $row['player_img']=$URL.$row['player_img'];
			$row['player_voice']=$URL.$row['player_voice'];//音频
			$row['player_video']=$URL.$row['player_video'];//视频
			$arr []=$row;
		}
		$order_col=array_column($arr,'player_vote');
		array_multisort($order_col,SORT_DESC,$arr);//排序，按照总利润排序
		$arrs=array_slice($arr,$start,$page_size);
		echo json_encode($arrs);
?>