<?php
include 'dbcore.php';
include 'functions.php';
sec_session_start(); // Our custom secure way of starting a php session. 
 
if(isset($_POST['email'], $_POST['p'])) { 
   $email = $_POST['email'];
   $password = $_POST['p']; // The hashed password.
   switch (login_status($email, $password, $db)) {
    case 0:
        echo json_encode(array(
                'message' => 'Inicio de sesion exitosa.',
            ));
        break;
    case 1:
        echo json_encode(array(
                'error' => TRUE,
                'message' => 'El usuario no existe.',
            ));
        break;
    case 2:
        echo json_encode(array(
                'error' => TRUE,
                'message' => 'Clave incorrecta.',
            ));
        break;
    case 3:
        echo json_encode(array(
                'error' => TRUE,
                'message' => 'El usuario a sido bloqueado.',
            ));
        break;
	}
} else { 
   // The correct POST variables were not sent to this page.
   echo 'Invalid Request';
}
?>