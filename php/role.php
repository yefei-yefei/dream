<?php
	// // 角色报名
	include('./public.php');
	$obj=$_GET['obj'];
	$contents=json_decode($obj,TRUE);
	//接收的参数
	$player_name=$contents['player_name'];//名字
	$player_sex=$contents['player_sex'];//选手性别
	$player_age=$contents['player_age'];//年龄
	$player_height=$contents['player_height'];//身高
	$player_weight=$contents['player_weight'];//体重
	$san_wei=$contents['san_wei'];//三围
	$player_stage=$contents['player_stage'];//艺名
	$player_strong=$contents['player_strong'];//特长
	$player_magnum=$contents['player_magnum'];//代表作
	$player_tel=$contents['player_tel'];//选手电话
	$player_email=$contents['player_email'];//选手邮箱
	$player_role=$contents['player_role'];//角色
	$being_type=$contents['being_type'];//正在参加的类型
	$being_movie=$contents['being_movie'];//正在参加的电影
	//都得切http://      strripos() 截取该字符在字符串中最后出现的位置
	//视频 
	$player_video=$contents['player_video'];//视频
	$video_index=strripos( $player_video , '/' ,);
	$video=substr($player_video,$video_index+1);
	// //音频
	$player_voice=$contents['player_voice'];//音频
	$voice_index=strripos( $player_voice , '/' ,);
	$voice=substr($player_voice,$voice_index+1);
	$player_img=$contents['player_img'];//图片
	// //多图片
	//--解析Json，获取对应的变量值
			$contents=json_decode($player_img,TRUE);
			$mesTitle = $contents;
			$val=null;           //存储内容
			foreach($player_img as $value){
				$value_index=strripos( $value , '/' ,);
				$value=substr($value,$value_index+1);
				$val.=$value.',';
			}
			$val= substr($val,0,strlen($val)-1);
			$sql2="select * from dream_players where player_tel='$player_tel'";
			$res2=$conn->query($sql2);
			if($res2->num_rows>0){
				echo 'tel';
			}
			//默认都是0
			$player_vote=0;//投票数
			//编号  数据库所有数据的长度加1
				// $player_serial=$_POST['player_serial'];//编号
				$player_serial=null;
				$arr=[];
				$sql1="select * from dream_players";
				$res1=$conn->query($sql1);
				while($row1=$res1->fetch_assoc()){
					$arr []=$row1;
				}
				$player_serial=count($arr)+1;
				$player_serial=$player_serial<9?'00'.$player_serial:$player_serial<100?'0'.$player_serial:$player_serial;
				//插入数据
				$sql="insert into dream_players (player_serial,player_name,player_height,player_weight,player_strong,player_magnum,player_age,player_vote,player_stage,player_role,player_voice,player_video,imgUrls,being_movie,being_type,player_tel,player_email,player_sex,san_wei) values ('$player_serial','$player_name','$player_height','$player_weight','$player_strong','$player_magnum','$player_age','$player_vote','$player_stage','$player_role','$voice','$video','$val','$being_movie','$being_type','$player_tel','$player_email','$player_sex','$san_wei')";
				$res=$conn->query($sql);
			if($res){
				echo 'ok';
			}else{
				echo 'no';
			}
			
?>