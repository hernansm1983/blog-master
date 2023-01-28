<?php
if(isset($_POST)){
	
	// Conexión a la base de datos
	require_once 'includes/conexion.php';

	// Recorger los valores del formulario de actualizacion
	$nombre = isset($_POST['nombre']) ? mysqli_real_escape_string($db, $_POST['nombre']) : false;
	$apellidos = isset($_POST['apellidos']) ? mysqli_real_escape_string($db, $_POST['apellidos']) : false;
	$email = isset($_POST['email']) ? mysqli_real_escape_string($db, trim($_POST['email'])) : false;
	$password = isset($_POST['password']) ? mysqli_real_escape_string($db, $_POST['password']) : false;

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
	
	// Validar apellidos
	if(!empty($apellidos) && !is_numeric($apellidos) && !preg_match("/[0-9]/", $apellidos)){
		$apellidos_validado = true;
	}else{
		$apellidos_validado = false;
		$errores['apellidos'] = "Los apellidos no son válido";
	}
	
	// Validar el email
	if(!empty($email) && filter_var($email, FILTER_VALIDATE_EMAIL)){
		$email_validado = true;
	}else{
		$email_validado = false;
		$errores['email'] = "El email no es válido";
	}
	
	// Validar la contraseña
	if(!empty($password)){
		$password_validado = true;
	}
	
	$guardar_usuario = false;
	
	if(count($errores) == 0){
		$guardar_usuario = true;
                $usuario = $_SESSION['usuario'];
                
                // COMPROBAR QUE EL MAIL NO EXISTE EN LA DB
                $sql_mail = "SELECT * FROM usuarios WHERE email = '".$email."'";
                $existe_mail = mysqli_query($db, $sql_mail);
                $isset_mail = mysqli_fetch_assoc($existe_mail);
                
                if($isset_mail['id'] == $usuario['id'] || empty($isset_mail)){
                    //echo $sql_mail;
                    //var_dump($existe_mail);
                    //die();

                    // Cifrar la contraseña Y SE ACTUALIZA SOLO SI FUE ENVIADA UNA NUEVA PASS
                    if(!empty($password)){
                        $password_segura = password_hash($password, PASSWORD_BCRYPT, ['cost'=>4]);
                        if(isset($password_segura)){
                                    $sql_pass = ", password = '$password_segura' ";
                                }
                    }else{
                        $sql_pass = "";
                    }

                    // ACTUALIZAR USUARIO EN LA TABLA USUARIOS DE LA BBDD

                    $sql = "UPDATE usuarios SET" 
                                ." nombre = '$nombre'"
                                .", apellidos = '$apellidos'"
                                .", email = '$email'"
                                .$sql_pass
                                ." WHERE id = '".$usuario['id']."'";
                    //echo $sql;
                    $guardar = mysqli_query($db, $sql);

    //		var_dump(mysqli_error($db));
                    //die();

                    if($guardar){
                            // ACTUALIZA LOS DATOS MODIFICADOS EN LA SESSION EN CURSO 
                            $_SESSION['usuario']['nombre'] = $nombre;
                            $_SESSION['usuario']['apellidos'] = $apellidos;
                            $_SESSION['usuario']['email'] = $email;
                            $_SESSION['completado'] = "La Actualizacion del Usuario se ha completado con éxito";
                    }else{
                            $_SESSION['errores']['general'] = "Fallo al actualizar el usuario!!";
                    }
                }else{
                    $_SESSION['errores']['general'] = "El usuario ya existe!! Por favor elije otro";
                }
	}else{
		$_SESSION['errores'] = $errores;
	}
}

header('Location: mis-datos.php');
