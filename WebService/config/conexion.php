<?php
    class Conectar{

        protected $dbh;
        protected function Conexion(){
            try{
                //local
                $conectar = $this->dbh = new PDO("mysql:local=localhost;dbname=bd_webservice","root","");
                return $conectar;

            }catch (Exception $e){
                print "¡Error de conexión !:". $e->getMessage()."<br/>";
                die();
            }
        }
    


    public function set_names(){
        return $this->dbh->query("SET NAMES 'utf8'");
    }

    }
?>