<?php
	header('Content-Type: application/json');

	require_once("../config/conexion.php");
	require_once("../modells/Usuariomovil.php");

	$usuariomovil = new Usuariomovil();
	$body = json_decode(file_get_contents("php://input"),true);

    
 	switch($_POST["op"]){

        case "GetId":
            $datos= $usuariomovil->get_user_x_id($body["user_dni"]);
            echo json_encode($datos);
        break;

	case "Insert":
            $datos= $usuariomovil->insert_user($body["user_dni"],$body["user_namepri"],$body["user_nameseg"],$body["user_apepri"],$body["user_apeseg"],$body["user_edad"],$body["user_depa"],$body["user_provi"],$body["user_distrito"],$body["user_correo"],$body["user_celular"],$body["user_domicilio"]);
            echo json_encode("Registrado Correctamente :) ");
        break;


     }
?>