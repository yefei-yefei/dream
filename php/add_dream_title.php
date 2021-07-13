<?php
// 标题修改
	include('./public.php');
	// 接收的参数
	$title=$_POST['title'];//电影名
	$type=$_POST['type'];//电影类型
	$content=$_POST['content'];//内容
	$start_time=$_POST['startTime'];//开始时间
	$end_time=$_POST['endTime'];//结束时间
	$pageView=$_POST['pageview'];//投票数
	$val=null;
	$endTime = strtotime($end_time);//结束时间时间戳
	$startTime = strtotime($start_time);//开始时间的时间戳
	// echo $endTime;
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
	    for($i=0;$i<count($files);$i++){
	    //取得上传文件信息
	    $fileName=$files[$i]['name'];
	    $tempName=$files[$i]['tmp_name'];//临时文件名
	                //避免上传文件的中文名乱码
	                $fileName=iconv("UTF-8", "GBK", $fileName);//把iconv抓取到的字符编码从utf-8转为gbk输出
	                $fileName=str_replace(".", time().".", $fileName);//在图片名称后加入时间戳，避免重名文件覆盖
	                move_uploaded_file($tempName, "images/".$fileName);
					$val.=$fileName.',';
	    }
		$val= substr($val,0,strlen($val)-1);
		// echo $title.'<br>'.$content.'<br>'.$start_time.'<br>'.$end_time.'<br>'.$pageView.'<br>'.$val;
		$sql="update dream_title  set banner_imgs='$val',title='$title',type='$type',content='$content',pageView='$pageView',end_time='$endTime',start_time='$startTime'";
		$res=$conn->query($sql);
		if($res){
			echo "<script>alert('提交成功');history.go(-1);</script>";
		}else{
			echo "<script>alert('提交上传失败')</script>";
		}
	
?>