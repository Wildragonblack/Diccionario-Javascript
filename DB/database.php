<?php 
$host = "localhost";
$database = "ia";
$password = "";
$user = "root";
@mysqli_set_charset($link, "utf8");
$link = new mysqli($host, $user, $password,$database);
if(!$link) {
	print("<script>alert('Error en la base de datos');</script>");
}
?>
