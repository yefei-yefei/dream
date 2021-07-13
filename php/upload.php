<?php
	include('./public.php');
				$file=$_FILES['file'];//以传递过来的图片路径
				// // echo $name.$file;
				//     if(is_uploaded_file($file['tmp_name'])){//$file['tmp_name'] 临时路径
				//         //路径
				        $path='./images/'.$file['name'];
				        move_uploaded_file($file['tmp_name'],$path);
						echo $URL.$file['name'];
?>