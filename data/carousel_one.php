<?php
require_once("init.php");
$sql="SELECT * FROM carousel_one";
$result=mysqli_query($conn,$sql);
echo json_encode(mysqli_fetch_all($result,1));

?>