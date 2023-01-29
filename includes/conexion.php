<?php
// Conexión

if($_SERVER['SERVER_NAME'] == 'localhost'){
    $servidor = 'localhost';
    $usuario = 'root';
    $password = '';
    $basededatos = 'blog_master';
}else{
    $servidor = 'pxukqohrckdfo4ty.cbetxkdyhwsb.us-east-1.rds.amazonaws.com';
    $usuario = 'elplxav63ajzx6qb';
    $password = 'evhfzqu3ulqojq5w';
    $basededatos = 'mnfa0m8qzd4umebz';
}
$db = mysqli_connect($servidor, $usuario, $password, $basededatos);

mysqli_query($db, "SET NAMES 'utf8'");

// Iniciar la sesión
if(!isset($_SESSION)){
	session_start();
}