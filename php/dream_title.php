<?php
// 标题
	include('./public.php');
	date_default_timezone_set('prc'); //中国北京时间
	// $start_time = strtotime('now');
	// $end_time = strtotime('2021-6-18 00:00:00');
	// echo $end_time;
	// $remain_time = $end_time-$start_time; //剩余的秒数
	// $remain_hour = floor($remain_time/(60*60)); //剩余的小时
	// $remain_minute = floor(($remain_time - $remain_hour*60*60)/60); //剩余的分钟数
	// $remain_second = ($remain_time - $remain_hour*60*60 - $remain_minute*60); //剩余的秒数
	// echo json_encode(array('hour'=>$remain_hour,'minute'=>$remain_minute,'second'=>$remain_second));
	// //标题
	// 查询数据库 投票数人数，以及总投票数
		$sql2="select * from dream_players";
		$res2=$conn->query($sql2);
		// $row3=$res2->fetch_assoc();
		$vote=0;
		while($row=$res2->fetch_assoc()){
			$vote+=intval($row['player_vote']);//intval 强制转换类型
			$arr []=$row;
		}
		$players=count($arr);
		// echo $vote.','.$players;
		$sql2="update dream_title  set vote='$vote',players='$players'";
		$res2=$conn->query($sql2);
		// 全部查询
		$sql1="select * from dream_title";
		$res1=$conn->query($sql1);
		$row1=$res1->fetch_assoc();
		// 转换图片路径
		$imgs=explode(",",$row1['banner_imgs']);
		unset($row1['banner_imgs']);
		$row1['banner_imgs']=$imgs;//图片
		$s=null;
		foreach($row1['banner_imgs'] as $value){
			$s.=$URL.$value.',';
		}
		$s = substr($s,0,strlen($s)-1);
		$s = explode(',',$s);
		$row1['banner_imgs']=$s;
		$row1['endTime']=$row1['end_time'];
		$row1['end_time']=($row1['end_time']-$row1['start_time']);
		// $row1['end_time']=($row1['end_time']-$start_time);
		// $arr []=$row;
		echo json_encode($row1);
	
	
?>