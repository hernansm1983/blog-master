<?php
//---Iniciar la sesion y conexion a la db---
require_once 'includes/conexion.php';


if(isset($_POST)){

    //---Si existen, elimino errores anteriores de login---
    if(isset($_SESSION['error_login'])){
        $_SESSION['error_login'] = null;
    }

    //---Recojer los datos del formulario--- 
    $email = trim($_POST['email']);
    $password = $_POST['password'];

    //---Consulta para comprobar las credenciales del usuario---
    $sql = "SELECT * FROM usuarios WHERE email = '$email'";
    $login = mysqli_query($db, $sql);

    if($login && mysqli_num_rows($login) == 1){
        $usuario = mysqli_fetch_assoc($login);

        //---Comprobar la contraseña---
        $pass_ok = password_verify($password, $usuario['password']);
        
        if($pass_ok){
            //---Guardar en una sesion los datos del usuario---
            $_SESSION['usuario'] = $usuario;

            
        }else{
            //---Si algo falla, enviar una sesion con el fallo---
            $_SESSION['error_login'] = 'Login Incorrecto !!';
        }
    }else{
        //---ERROR---
    }
    //---Redirigir al index.php---
    header('location:index.php');
}








