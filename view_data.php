<?php
session_start();
if(isset($_SESSION['username'])){
    include 'template/header.html';
    include 'template/nav.html';

} else {
    header('location:login.php');
}

?>