<?php
	// 添加选手
	include('./public.php');
	// echo '1';
	//接收的参数
	$id=$_POST['id'];
	$gift_name=$_POST['gift_name'];//礼物名字
	$gift_price=$_POST['gift_price'];//礼物价钱
	 // 判断当前目录下的 upload 目录是否存在该文件
	        // 如果没有 upload 目录，你需要创建它，upload 目录权限为 777
			// 图片上传
	        if(isset($_POST['sub'])){
				//图片
	        	$file=$_FILES['gift_img'];//以传递过来的图片路径
	        	// echo $name.$file;
	        	    if(is_uploaded_file($file['tmp_name'])){//$file['tmp_name'] 临时路径
	        		function get_password( $length = 4 )
	        		{
	        		    $str = substr(md5(time()), 0, $length);//md5加密，time()当前时间戳
	        		    return $str;
	        		}
					// echo $id;
	        	        //路径
	        	        $path='./images/'.get_password().$file['name'];
						$img=get_password().$file['name'];
	        	       move_uploaded_file($file['tmp_name'],$path);
	        	}
	        }
			if($id=='add'){
				// echo $id;
				//插入数据
				$sql="insert into gift (gift_name,gift_price,gift_img) values ('$gift_name','$gift_price','$img')";
				$res=$conn->query($sql);
			}
				//修改数据
			// echo $path;
				$sql="update gift  set gift_name='$gift_name',gift_price='$gift_price',gift_img='$img' where id='$id'";
				$res=$conn->query($sql);
			if($res){
				echo "<script>alert('提交成功');history.go(-1);</script>";
				// echo 'ok';
			}else{
				echo "<script>alert('提交失败')</script>";
				// echo 'no';
			}
?>