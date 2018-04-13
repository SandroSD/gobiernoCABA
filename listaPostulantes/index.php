<?php
    require_once($_SERVER['DOCUMENT_ROOT']."/helpers/core.php");

    $bd = new bd();
    $queryPostulante = "SELECT * FROM postulante";
    $postulantes = $bd->ejecutarQuery($queryPostulante);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Gobierno de la Ciudad</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="index.css">
    

</head>
<body>
    <div id="contenido">
        <div id="pegarModal"></div>
            <div class="container">
                <div class="row">
                    <h1>Postulantes Registrados</h1>                    
                    <div class="col-lg-12">
                        <table class="table table-bordered table-hover" id="miTabla">
                            <thead>
                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>DNI</th>
                                <th>Ver Información</th>
                                <th>Eliminar Postulante</th>
                            </thead>
                            <tbody>
                                <?php
                                    foreach ($postulantes as $postulante){
                                        echo "<tr>";
                                            echo "<td>".$postulante['nombre']."</td>";
                                            echo "<td>".$postulante['apellido']."</td>";
                                            echo "<td>".$postulante['dni']."</td>";                                        
                                            echo "<td><button class='btn btn-primary activarModalInfo' data-toggle='modal' data-target='#todaLaInfoPOS' data-id='".$postulante['idPostulante']."'>
                                                Ver Información
                                                </button></td>";
                                            echo "<td><button class='btn btn-danger borrarPostulante' data-id='".$postulante['idPostulante']."'>
                                                Borrar Información
                                                </button></td>";
                                        echo "</tr>";
                                    }
                                ?>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-lg-1">
                        <button class="btn btn-info" id="menuPpal">Volver al Menú Principal</button>
                    </div>
                </div>
            </div>
        
    </div>

    <script src="index.js"></script>    
</body>
</html>