<?php 
//---Cargo la conexion a la DB---
require_once 'includes/conexion.php';

if(isset($_GET['id']) && isset($_SESSION['usuario'])){
    $entrada_id = $_GET['id'];
    $usuario_id = $_SESSION['usuario']['id'];
    
    $sql = "DELETE FROM entradas WHERE usuario_id = '".$usuario_id."' AND id = '".$entrada_id."'";
    $borrar = mysqli_query($db, $sql);
    
    //echo mysqli_error($db);
    //die($sql);
}

header ("location:index.php");