<?php 
session_start();
require_once("functions.php");
$id=$_GET["id"];
$iduser=$_SESSION["iduser"];
deleteReceive($id);
header("location:messages.php");
?>