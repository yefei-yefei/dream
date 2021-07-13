<?php
	//修改规则
		include('./public.php');
		$title=$_GET['title'];//	节目名称
		$slogan=$_GET['slogan'];//节目口号
		$aim=$_GET['aim'];//节目宗旨
		$orientation=$_GET['orientation'];//	节目定位
		$compere=$_GET['compere'];//主持人
		$broadcast=$_GET['broadcast'];//播出形式
		$audiences=$_GET['audiences'];//受众分析
		$effect=$_GET['effect'];//节目效果预测	
		$content=$_GET['content'];//节目内容
		//--解析Json，获取对应的变量值
		$contents=json_decode($content,TRUE);
		$mesTitle = $contents;
		$con=null;           //存储内容
		foreach($mesTitle as $val){
			$con.=$val.',';
		}
		$con= substr($con,0,strlen($con)-1);
		// print_r($mesTitle).'<br>';
		$content_title=$_GET['content_title'];//节目内容标题
		//--解析Json，获取对应的变量值
		$content_titles=json_decode($content_title,TRUE);
		$mesTitles = $content_titles;
		$con_title=null;       //存储内容标题
		foreach($mesTitles as $val){
			$con_title.=$val.',';
		}
		$con_title= substr($con_title,0,strlen($con_title)-1);
		// print_r($mesTitles);
				// //修改数据、
				$sql="update holiday  set title='$title',slogan='$slogan',aim='$aim',orientation='$orientation',content_title='$con_title',content='$con',compere='$compere',broadcast='$broadcast',audiences='$audiences',effect='$effect'";
				$res=$conn->query($sql);
				if($res){
					// echo "<script>alert('表单提交成功');history.go(-1);</script>";
					echo 'ok';
				}else{
					// echo "<script>alert('表单提交失败')</script>";
					echo 'no';
				}
?>