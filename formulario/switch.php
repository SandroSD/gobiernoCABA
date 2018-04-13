<?php

    require_once($_SERVER['DOCUMENT_ROOT']."/helpers/core.php");

    $bd = new bd();
    $postulante = new postulante();

    switch ($_GET['op']) {
        case 'estCiv':
            $queryEstadoCivil = "SELECT * from estadoCivil";
            $estados = $bd->ejecutarQuery($queryEstadoCivil);
            $opciones = "<option value='0'>Elegir un estado</option>";
            foreach ($estados as $estado) {
                $opciones .= "<option value='".$estado['idEstadoCivil']."'>".$estado['descripcion']."</option>";   
            }
            echo $opciones;
        break;
        case 'cargarPais':
            $queryPais = "SELECT * from pais";
            $paises = $bd->ejecutarQuery($queryPais);
            $opciones = "<option value='0'>Elegir un país</option>";
            foreach ($paises as $pais) {
                $opciones .= "<option value='".$pais['idPais']."'>".$pais['nombrePais']."</option>";   
            }
            echo $opciones;
        break;
        case 'cargarProv':
            if(isset($_POST['idPais'])){
                $idPais = $_POST['idPais'];
            };
            $queryProv = "SELECT * from estado where idPais ='".$idPais."'";
            $provincias = $bd->ejecutarQuery($queryProv);
            $opciones = "<option value='0'>Elegir una provincia</option>";
            foreach ($provincias as $provincia) {
                $opciones .= "<option value='".$provincia['idEstado']."'>".$provincia['nombreEstado']."</option>";   
            }
            echo $opciones;
        break;
        case 'cargarIdiomas':            
            $queryIdiomas = "SELECT * FROM listaIdiomas";
            $idiomas = $bd->ejecutarQuery($queryIdiomas);
            $opciones = "<option value='0'>Elegir un idioma</option>";
            foreach ($idiomas as $idioma) {
                $opciones .= "<option value='".$idioma['idListaIdioma']."'>".$idioma['nombreIdioma']."</option>";   
            }
            echo $opciones;
        break;
        case 'save':
            if(isset($_POST['form'])){
                $datos = $_POST['form'];
                parse_str($datos,$info);                
            }
            $postulante->save($info);        
        break;
    }


?>