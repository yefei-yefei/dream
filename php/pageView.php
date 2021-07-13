<?php
	include('./public.php');
	// 时时更新浏览量
	// 查询数据库  将浏览量自增
		$sql="select * from dream_title";
		$res=$conn->query($sql);
		$row=$res->fetch_assoc();
		$pageView=$row['pageView']+1;
		// 更新数据库
		$sql2="update dream_title set  pageView='$pageView'";
		$res2=$conn->query($sql2);
		if($res2){
			echo 'ok';
		}else{
			echo 'no';
		}
?>