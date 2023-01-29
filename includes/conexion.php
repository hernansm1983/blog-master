<?php
// Conexión

if($_SERVER['SERVER_NAME'] == 'localhost'){
    $servidor = 'localhost';
    $usuario = 'root';
    $password = '';
    $basededatos = 'blog_master';
}else{
    $servidor = 'mysql-artemisa.alwaysdata.net';
    $usuario = 'artemisa';
    $password = '!Q2w3e4r%T';
    $basededatos = 'artemisa_blog';
}
$db = mysqli_connect($servidor, $usuario, $password, $basededatos);

mysqli_query($db, "SET NAMES 'utf8'");

// Iniciar la sesión
if(!isset($_SESSION)){
	session_start();
}