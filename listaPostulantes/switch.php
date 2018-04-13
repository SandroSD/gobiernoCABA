<?php

    require_once($_SERVER['DOCUMENT_ROOT']."/helpers/core.php");

    $bd = new bd();
    $postulante = new postulante();
    
    switch ($_GET['op']) {
        
        case 'borrarPostulante':
            if(isset($_POST['idPostulante'])){
                $idPostulante = $_POST['idPostulante'];
            }            
            $postulante->delete($idPostulante);        
        break;
        case 'buscarPostulante':
            if(isset($_POST['palabra'])){
                $palabra = $_POST['palabra'];
            }
            $queryBuscar = "SELECT * 
                            FROM gobiernoCABA.postulante
                            WHERE nombre like '%".$palabra."%' OR apellido like '%".$palabra."%' or dni like '%".$palabra."%'";
            $resultados = $bd->ejecutarQuery($queryBuscar);
            $opciones = "";
            foreach ($resultados as $resultado) {
                $opciones .= "<tr>";
                    $opciones .= "<td>".$resultado['nombre']."</td>";
                    $opciones .= "<td>".$resultado['apellido']."</td>";
                    $opciones .= "<td>".$resultado['dni']."</td>";                                        
                    $opciones .= "<td><button class='btn btn-primary activarModalInfo' data-toggle='modal' data-target='#todaLaInfoPOS' data-id='".$resultado['idPostulante']."'>
                        Ver Información
                        </button></td>";
                    $opciones .= "<td><button class='btn btn-danger borrarPostulante' data-id='".$resultado['idPostulante']."'>
                        Borrar Información
                        </button></td>";
                $opciones .= "</tr>";
            }
        echo $opciones;
        break;
    }
?>