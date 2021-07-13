<?php
// 渲染规则
	include('./public.php');
	$sql="select * from holiday";    
	$res=$conn->query($sql);
	while($row=$res->fetch_assoc()){
		$content=explode(',',$row['content']);
		$content_title=explode(',',$row['content_title']);
		// unset($row['content']);
		$row['content']=$content;
		$row['content_title']=$content_title;
		$arr [] =$row;
		
	}	
	forEach($arr[0]['content_title'] as $key=>$value){
		// echo  $value.','.$arr[0]['content'][$key].'<br>';
		$arr[0]['all'][]=(object)['content_title' =>$value,'content'=>$arr[0]['content'][$key]];
	};
	unset($arr[0]['content']);
	unset($arr[0]['content_title']);
	echo json_encode($arr);
	
	
?>