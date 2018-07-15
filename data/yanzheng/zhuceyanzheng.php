<?php
require_once("../init.php");
@$uname=$_REQUEST["uname"];
if($uname!=null){
 $sql="SELECT count(id) FROM user WHERE rootname='$uname' ";
	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_row($result);
if($row[0]==0){
	echo 1;
	}else{
	echo 0;
	}
}





















?>
