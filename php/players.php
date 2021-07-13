<?php
// 所有选手
	include('./public.php');
	//每页从哪里开始，到哪里结束
	if(isset($_GET['page'])){
	        $page=$_GET['page'];  //传参代表的是第n页；
	}else{
	        $page=1;  //如果不传参默认是第一页；
	}
	$page_size=$_GET['page_size'];
	$start=($page-1)*$page_size;
		     //$page_size;---》设置的每页显示的条数
		$sql="select * from dream_players limit $start,$page_size";    //limit  范围
		$res=$conn->query($sql);
		// print_r($row);
		while($row=$res->fetch_assoc()){ 
			// $row['player_img']=$URL.$row['player_img'];//图片
			$row['player_voice']=$URL.$row['player_voice'];//音频
			$row['player_video']=$URL.$row['player_video'];//视频
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
			$arr[]=$row;
		}
		
		$sql1="select * from dream_players";    //limit  范围
		$res1=$conn->query($sql1);
		$row1=$res1->fetch_assoc();
		//得到全部选手的长度
		while($row1=$res1->fetch_assoc()){
			$arr1 []=$row1;
		}
		$myArray= (object) array('all' =>$arr,'count'=>count($arr1)+1); //将多个对象添加给一个数组给数组
		echo json_encode($myArray);
	
?>