<?php
include('./public.php');
//添加角色报名
// 接收的参数
	$role_name=$_POST['role_name'];//角色姓名
	$role_number=$_POST['role_number'];//角色编号
	$role_con=$_POST['role_con'];//角色内容
	$id=$_POST['id'];//角色标识
		        	$file=$_FILES['role_img'];//以传递过来的图片路径
		        	// echo $name.$file;
		        	    if(is_uploaded_file($file['tmp_name'])){//$file['tmp_name'] 临时路径
		        		function get_password( $length = 4 )
		        		{
		        		    $str = substr(md5(time()), 0, $length);//md5加密，time()当前时间戳
		        		    return $str;
		        		}
		        	        //路径
		        	        $path='./images/'.get_password().$file['name'];
							$img=get_password().$file['name'];
		        	        move_uploaded_file($file['tmp_name'],$path);
		        	}
	if($id=='add'){
		$sql="insert into role (role_img,role_name,role_number,role_con) values ('$img','$role_name','$role_number','$role_con')";
		$res=$conn->query($sql);
	}
	$sql="update role set role_img='$img',role_name='$role_name',role_number='$role_number',role_con='$role_con' where id='$id'";
	$res=$conn->query($sql);
	if($res){
		echo "<script>alert('提交成功');history.go(-1);</script>";
		// echo 'ok';
	}else{
		echo "<script>alert('提交失败')</script>";
		// echo 'no';
	}
?>