<?php
if(isset($_POST)){

    //---Cargo la conexion a la DB---
    require_once 'includes/conexion.php';
    require_once 'includes/helpers.php';
    
    // Recorger los valores del formulario de registro
    $titulo = isset($_POST['titulo']) ? eliminaMalasPalabras(mysqli_real_escape_string($db, $_POST['titulo'])) : false;
    $descripcion = isset($_POST['descripcion']) ? eliminaMalasPalabras(mysqli_real_escape_string($db, $_POST['descripcion'])) : false;
    $categoria = isset($_POST['categoria']) ? (int) $_POST['categoria'] : false;
    $usuario = $_SESSION['usuario']['id'];
    //var_dump($_SESSION);
    //echo 'e'.$usuario;
    // Array de errores
    $errores = array();

    // Validar los datos antes de guardarlos en la base de datos
    // Validar campo nombre
    if(empty($titulo)){
            $errores['titulo'] = "El Titulo no es válido. ";
    }

    if(empty($descripcion)){
		$errores['descripcion'] = "La Descripcion no es válida. ";
    }

    if(empty($categoria) && !is_numeric($categoria)){
		$errores['categoria'] = "La Categoria no es válida. ";
    }
	
    if(count($errores) == 0){
        if(isset($_GET['editar'])){
            $entrada_id = $_GET['editar'];
            $usuario_id = $_SESSION['usuario']['id'];
            $sql = "UPDATE entradas SET titulo='$titulo', descripcion='$descripcion', categoria_id='$categoria' "
                  ."WHERE id=$entrada_id "
                  ."AND usuario_id=$usuario_id";
        }else{
            $sql = "INSERT INTO entradas VALUES (NULL, '$usuario', '$categoria', '$titulo', '$descripcion', CURDATE());";
        }
        $guardar = mysqli_query($db, $sql);
        
        if($guardar){
			$_SESSION['completado'] = "La Entrada se ha guardado con éxito";
            
		}else{
			$errores['sql'] = "Fallo al guardar la Entrada!!";
            
		}
    }
    
    $_SESSION['errores'] = $errores;
    
}
//var_dump($_SESSION['errores']);
//die();
if(isset($_GET['editar'])){
    header('location: editar-entrada.php?id='.$_GET['editar']);    
}else{
    header('location: crear-entrada.php');    
}
