<?php
include('./public.php');
// 将数据存储到txt中
$str='123456';
file_put_contents('emails.txt',$str);
echo file_get_contents('emails.txt');
?>