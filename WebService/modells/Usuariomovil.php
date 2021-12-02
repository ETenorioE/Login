<?php
	class Usuariomovil extends Conectar{

            public function get_user_x_id($user_dni){
		$conectar= parent::conexion();
		parent::set_names();
            $sql="SELECT user_dni,ser_namepri FROM tm_usermovil WHERE est=1 AND user_dni=? ";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1, $user_dni);
            $sql->execute();
            return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC);
		}

            public function insert_user($user_dni,$user_namepri,$user_nameseg,$user_apepri,$user_apeseg,$user_edad,$user_depa,$user_provi,$user_distrito,$user_correo,$user_celular,$user_domicilio){
            $conectar= parent::conexion();
            parent::set_names();
            $sql="INSERT INTO tm_usermovil (user_id, user_dni, user_namepri, user_nameseg, user_apepri, user_apeseg, user_edad, user_depa, user_provi, user_distrito, user_correo, user_celular, user_domicilio, est) VALUES (NULL, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, '1');";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1, $user_dni);
            $sql->bindValue(2, $user_namepri);
            $sql->bindValue(3, $user_nameseg);
            $sql->bindValue(4, $user_apepri);
            $sql->bindValue(5, $user_apeseg);
            $sql->bindValue(6, $user_edad);
            $sql->bindValue(7, $user_depa);
            $sql->bindValue(8, $user_provi);
            $sql->bindValue(9, $user_distrito);
            $sql->bindValue(10, $user_correo);
            $sql->bindValue(11, $user_celular);
            $sql->bindValue(12, $user_domicilio);
            $sql->execute();
            return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC);
        }	
        

	}
?>