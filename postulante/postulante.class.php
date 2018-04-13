<?php
class postulante{

    private $bd;
       
    public function __construct(){                        
        $this->bd = new bd();
    }

    public function save($info){
        
        $this->saveDatosPersonales($info);        
        if($info['expLab']=="S"){
            $this->saveExperienciaLaboral($info);
        }
        $this->saveEstudios($info);
        if($info['idiom']=="S"){
            $this->saveIdioma($info);
        }
    }
    public function saveDatosPersonales($info){
        $sexo = $info['sexo'] == "m" ? "Masculino" : "Femenino";                

        $queryInsertDatPer = "INSERT INTO `gobiernoCABA`.`postulante` (`nombre`, `apellido`, `sexo`, `idEstadoCivil`, `dni`, `celular`, `fijo`, `idPais`, `idEstado`, `ciudad`, `calle`, `metas`) 
                              VALUES ('".$info['nombre']."', '".$info['apellido']."', '".$sexo."', ".$info['estadoCivil'].", '".$info['documento']."', '".$info['celular']."', '".$info['tfijo']."',".$info['paisDP'].",".$info['provincia'].", '".$info['ciudad']."', '".$info['calle']."', '".$info['metas']."')";                
        if($this->bd->ejecutarNonQuery($queryInsertDatPer)){
            echo "OK";
        }else{
            echo "ERROR";
        }

    }
    public function saveExperienciaLaboral($info){
        $lastID = $this->getLastId();

        $queryInsertEL = "INSERT INTO `gobiernoCABA`.`expLaboral` (`empresa`, `actividad`, `puesto`, `nivel`, `pais`, `fecDesde`, `fecHasta`, `area`, `descripcion`, `pCargo`, `pReferencia`, `idPostulante`)
                          VALUES ('".$info['empresa']."', '".$info['actividad']."', '".$info['puesto']."', '".$info['nivel']."', '".$info['pais']."', '".$info['fDesde']."', '".$info['fHasta']."', '".$info['aPuesto']."', '".$info['descripcion']."', '".$info['pCargo']."', '".$info['pReferencia']."', ".$lastID.")";
        if($this->bd->ejecutarNonQuery($queryInsertEL)){
            echo "OK";
        }else{
            echo "ERROR";
        }
    }
    public function saveEstudios($info){        
        $lastID = $this->getLastId();

        $queryInsertES = "INSERT INTO `gobiernoCABA`.`estudio` (`casaEstudios`, `nivel`, `especialidad`, `fecDesde`, `fecHasta`, `idPostulante`) 
                          VALUES ('".$info['cEstudios']."', '".$info['nivelES']."', '".$info['especialidad']."', '".$info['fDesdeEst']."', '".$info['fHastaEst']."', ".$lastID.")";
        
        if($this->bd->ejecutarNonQuery($queryInsertES)){
            echo "OK";
        }else{
            echo "ERROR";
        }
    }
    public function saveIdioma($info){
        $lastID = $this->getLastId();
        
        $queryInsertIDIOMA = "INSERT INTO `gobiernoCABA`.`idioma` (`idNombreIdioma`, `oral`, `escrito`, `idPostulante`) 
                              VALUES ('".$info['nIdioma']."', '".$info['pOral']."', '".$info['pEscrito']."', ".$lastID.")";
        if($this->bd->ejecutarNonQuery($queryInsertIDIOMA)){
            echo "OK";
        }else{
            echo "ERROR";
        }
    }
    public function delete($idPostulante){
        $queryDeletePostulante = "DELETE FROM `gobiernoCABA`.`postulante` WHERE `idPostulante`='".$idPostulante."'";
        $queryDeleteIdioma = "DELETE FROM `gobiernoCABA`.`idioma` WHERE `idPostulante`='".$idPostulante."'";
        $queryDeleteExpLab = "DELETE FROM `gobiernoCABA`.`expLaboral` WHERE `idPostulante`='".$idPostulante."'";
        $queryDeleteEstudio = "DELETE FROM `gobiernoCABA`.`estudio` WHERE `idPostulante`='".$idPostulante."'";
        
        $this->bd->ejecutarNonQuery($queryDeletePostulante);
        $this->bd->ejecutarNonQuery($queryDeleteIdioma);
        $this->bd->ejecutarNonQuery($queryDeleteExpLab);
        $this->bd->ejecutarNonQuery($queryDeleteEstudio);
    }
    private function getLastId(){
        $query = "SELECT idPostulante FROM postulante ORDER BY idPostulante DESC LIMIT 1";

        $lastID = $this->bd->ejecutarQuery($query);
        
        return $lastID[0]['idPostulante'];        
    }

}
?>