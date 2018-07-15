<?php
require_once("../init.php");
session_start();
@$id=$_SESSION["id"];
if($id!=null){
	$sql="select rootname from user where id=$id";
	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_row($result);
	echo json_encode(["ok"=>1, "rootname"=>$row[0]]);
}else{
	echo json_encode(["ok"=>0]);
}