<?php
// 登录
    include('./public.php');
    $name=$_GET['name'];
    $password=$_GET['password'];
    $sql="select * from admin where name='$name' and password='$password'";
    $res=$conn->query($sql);
    if($res->num_rows>0){
        echo 'ok';
    }else{
        echo 'no';
    }
?>