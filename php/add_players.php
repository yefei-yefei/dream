<?php
	// 添加选手
	include('./public.php');
	// echo '1';
	//接收的参数
	$id=$_POST['id'];
	$player_name=$_POST['player_name'];//名字
	$player_height=$_POST['player_height'];//身高
	$player_weight=$_POST['player_weight'];//体重
	$player_strong=$_POST['player_strong'];//特长
	$player_magnum=$_POST['player_magnum'];//代表作
	$player_age=$_POST['player_age'];//年龄
	$player_vote=$_POST['player_vote'];//投票数
	$player_stage=$_POST['player_stage'];//艺名
	$player_role=$_POST['player_role'];//角色
	// $player_heat=$_POST['player_heat'];//热度
	$being_type=$_POST['being_type'];//正在参加的类型
	$being_movie=$_POST['being_movie'];//正在参加的电影
	$player_tel=$_POST['player_tel'];//选手电话
	$player_email=$_POST['player_email'];//选手邮箱
	$player_sex=$_POST['player_sex'];//选手性别
	$san_wei=$_POST['san_wei'];//三围
	
	 // 判断当前目录下的 images 目录是否存在该文件
	        // 如果没有 images 目录，你需要创建它，images 目录权限为 777
			// 图片上传
	        if(isset($_POST['sub'])){
				// 视频
	        	$file1=$_FILES['player_video'];//以传递过来的视频路径
	        	// echo $name.$file;
	        	    if(is_uploaded_file($file1['tmp_name'])){//$file['tmp_name'] 临时路径
	        		function get_password( $length = 4 )
	        		{
	        		    $str = substr(md5(time()), 0, $length);//md5加密，time()当前时间戳
	        		    return $str;
	        		}
	        		// echo $id;
	        	        //路径
	        	        $path='./images/'.get_password().$file1['name'];
	        			$video=get_password().$file1['name'];
	        	       move_uploaded_file($file1['tmp_name'],$path);
	        	}
				//音频
				$file2=$_FILES['player_voice'];//以传递过来的音频路径
				// echo $name.$file;
				    if(is_uploaded_file($file2['tmp_name'])){//$file['tmp_name'] 临时路径
					// function get_password( $length = 4 )
					// {
					//     $str = substr(md5(time()), 0, $length);//md5加密，time()当前时间戳
					//     return $str;
					// }
					// echo $id;
				        //路径
				        $path='./images/'.get_password().$file2['name'];
						$voice=get_password().$file2['name'];
				       move_uploaded_file($file2['tmp_name'],$path);
				}
				//多图
				//取文件信息、
					$arr=$_FILES['imgs'];
				    $files=array();
				    for($i=0;$i<count($arr['name']);$i++){//count()统计数组键值name长度
				        $files[$i]['name']=$arr['name'][$i];
				        $files[$i]['type']=$arr['type'][$i];
				        $files[$i]['tmp_name']=$arr['tmp_name'][$i];
				        $files[$i]['error']=$arr['error'][$i];
				        $files[$i]['size']=$arr['size'][$i];
				    }
					$val=null;
				    for($i=0;$i<count($files);$i++){
				    //取得上传文件信息
				    $fileName=$files[$i]['name'];
				    $tempName=$files[$i]['tmp_name'];//临时文件名
				                //避免上传文件的中文名乱码
				                // $fileName=iconv("UTF-8", "GBK", $fileName);//把iconv抓取到的字符编码从utf-8转为gbk输出
				                $fileName=str_replace(".", time().".", $fileName);//在图片名称后加入时间戳，避免重名文件覆盖
				                move_uploaded_file($tempName, "images/".$fileName);
								$val.=$fileName.',';
				    }
					$val= substr($val,0,strlen($val)-1);
	        }
			// echo $id.'<br>'.$player_name.'<br>'.$player_height.'<br>'.$player_weight.'<br>'.$player_strong.'<br>'.$player_magnum.'<br>'.$player_age.'<br>'.$player_vote.'<br>'.$player_stage;
			// echo '<br>'.$player_role.'<br>'.$player_heat.'<br>'.$being_type.'<br>'.$being_movie.'<br>'.$player_tel.'<br>'.$player_email.'<br>'.$player_sex.'<br>'.$san_wei;
			if($id=='add'){
				//编号  数据库所有数据的长度加1
					$player_serial=$_POST['player_serial'];//编号
					$sql3="select * from dream_players";
					$res3=$conn->query($sql3);
					while($row3=$res3->fetch_assoc()){
						$arr3 []=$row3;
					}
					$player_serial=count($arr3)+1;
					$player_serial=$player_serial<9?'00'.$player_serial:$player_serial<100?'0'.$player_serial:$player_serial;
				 echo $id;
				//插入数据
				$sql="insert into dream_players (player_serial,player_name,player_height,player_weight,player_strong,player_magnum,player_age,player_vote,player_stage,player_role,player_voice,player_video,imgUrls,being_movie,being_type,player_tel,player_email,player_sex,san_wei) values ('$player_serial','$player_name','$player_height','$player_weight','$player_strong','$player_magnum','$player_age','$player_vote','$player_stage','$player_role','$voice','$video','$val','$being_movie','$being_type','$player_tel','$player_email','$player_sex','$san_wei')";
				$res=$conn->query($sql);
				// if($res){
				// 	echo "<script>alert('提交成功');history.go(-1);</script>";
				// 	// echo 'ok';
				// }else{
				// 	echo "<script>alert('提交失败')</script>";
				// 	// echo 'no';
				// }
			}
				//修改数据
				$sql="update dream_players set being_movie='$being_movie',being_type='$being_type',player_name='$player_name',player_height='$player_height',player_weight='$player_weight',player_strong='$player_strong',player_magnum='$player_magnum',player_age='$player_age',player_vote='$player_vote',player_stage='$player_stage',player_role='$player_role',player_voice='$voice',player_video='$video',imgUrls='$val',player_tel='$player_tel',player_email='$player_email',player_sex='$player_sex',san_wei='$san_wei' where id='$id'";
				$res=$conn->query($sql);
			if($res){
				echo "<script>alert('提交成功');history.go(-1);</script>";
				// echo 'ok';
			}else{
				echo "<script>alert('提交失败')</script>";
				// echo 'no';
			}
?>