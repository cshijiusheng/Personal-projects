<?php
require_once("../init.php");
session_start();
@$rootname=$_REQUEST["uname"];
@$epwd=$_REQUEST["upwd"];
if($rootname!=null&&$epwd!==null){
 $sql="SELECT * FROM user WHERE rootname='$rootname' AND epwd='$epwd'";
	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_row($result);
	if($row!=null){	
		$_SESSION["id"]=$row[0];
		echo "登录成功!";
	}else{
		echo "用户名或密码错误!";
	}
}


?>