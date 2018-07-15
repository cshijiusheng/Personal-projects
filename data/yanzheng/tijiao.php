<?php
require_once("../init.php");
@$gamename=$_REQUEST["gamename"];
@$rootname=$_REQUEST["uname"];
@$epwd=$_REQUEST["upwd"];
@$ename=$_REQUEST["zname"];
@$idcard=$_REQUEST["card"];
if($gamename!=null&&$rootname!=null&&$epwd!=null&&$ename!=null&&$idcard!=null){
	$sql="SELECT count(id) FROM user WHERE rootname='$rootname' AND idcard='$idcard'";
	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_row($result);
	if($row[0]==0){
    	$sql="insert into user(gamename,rootname,epwd,ename,idcard) VALUES('$gamename','$rootname','$epwd','$ename','$idcard')";	
	    $result=mysqli_query($conn,$sql);
	    $rs=mysqli_affected_rows($conn);
			if($rs>0){
				echo '注册成功';
			}else{
				echo '注册失败';
			}
	}else{
		echo '用户已存在！';
	}
}else{
	echo '必填项不能为空!';
}
 