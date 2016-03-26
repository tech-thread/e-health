<?php
session_start();

include 'action/db-connection.php';

$username = $_POST['username'];
$password = $_POST['password'];

$query= mysql_query("SELECT * FROM tbl_user WHERE login_name ='$username' AND password='$password' ");



if(mysql_num_rows($query)>0){
	$_SESSION['username']=$_POST['username'];
	header('location:view_data.php');
}
else{
	echo "Login failed";
}

?>


