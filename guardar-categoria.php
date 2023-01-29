<?php
if(isset($_POST)){

    //---Cargo la conexion a la DB---
    require_once 'includes/conexion.php';   
    require_once 'includes/helpers.php';


    // Recorger los valores del formulario de registro
	$nombre = isset($_POST['nombre']) ? eliminaMalasPalabras(mysqli_real_escape_string($db, $_POST['nombre'])) : false;
	
    // Array de errores
	$errores = array();
	
	// Validar los datos antes de guardarlos en la base de datos
	// Validar campo nombre
	if(!empty($nombre) && !is_numeric($nombre) && !preg_match("/[0-9]/", $nombre)){
		$nombre_validado = true;
	}else{
		$nombre_validado = false;
		$errores['nombre'] = "El nombre no es válido";
	}
	
    if(count($errores) == 0){
        $sql = "INSERT INTO categorias VALUES (NULL, '$nombre');";
        $guardar = mysqli_query($db, $sql);
        var_dump(mysqli_error($db));
        if($guardar){
			$_SESSION['completado'] = "El alta de la nueva Categoria se ha completado con éxito";
		}else{
			$_SESSION['errores']['general'] = "Fallo al guardar la nueva Categoria!!";
		}
    }
}

header('location: crear-categoria.php');