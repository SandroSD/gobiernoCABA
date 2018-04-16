<div class="modal fade" id="todaLaInfoPOS" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <?php
    /**Lógica LOAD para cargar todos los datos de un Postulante */
    require_once($_SERVER['DOCUMENT_ROOT']."/helpers/core.php");

    $bd = new bd();    

    if(isset($_POST['idPostulante'])){
      $idPostulante = $_POST['idPostulante'];
    }
    
    $selectPostulante = "SELECT * FROM
                          postulante p
                              INNER JOIN
                          estadoCivil ec ON (p.idEstadoCivil = ec.idEstadoCivil)
                              INNER JOIN
                          estado es ON (p.idEstado = es.idEstado)
                              INNER JOIN
                          pais pp ON (es.idPais = pp.idPais)
                          WHERE
                          idPostulante = '".$idPostulante."'";    
    $infoPostulante = $bd->ejecutarQuery($selectPostulante);

    $selectIdioma = "SELECT *
                     FROM gobiernoCABA.idioma i
                     INNER JOIN listaIdiomas li ON (i.idNombreIdioma = li.idListaIdioma)
                     WHERE idPostulante = '".$idPostulante."'";
    $infoIdioma = $bd->ejecutarQuery($selectIdioma);
    
    $selectExpLab = "SELECT *
                     FROM gobiernoCABA.expLaboral
                     WHERE idPostulante = '".$idPostulante."'";
    $infoExpLaboral = $bd->ejecutarQuery($selectExpLab);

    $selectEstudio = "SELECT * 
                      FROM gobiernoCABA.estudio
                      WHERE idPostulante = '".$idPostulante."'";
    $infoEstudio = $bd->ejecutarQuery($selectEstudio);


  ?>
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <?php          
          foreach ($infoPostulante as $row){
        ?>
        <h4 class="modal-title" id="exampleModalLabel"> Información del Postulante</h4>
      </div>
      <div class="modal-body">
        <div id="contenido">
          <?php
              echo "<h5><i class='fas fa-angle-right'></i> Datos Personales</h5>";
              echo "<span class='acomodo'> Nombre: </span> ". $row['nombre']."<br>";
              echo "<span class='acomodo'> Apellido: </span> ". $row['apellido']."<br>";
              echo "<span class='acomodo'> Sexo: </span> ". $row['sexo']."<br>";
              echo "<span class='acomodo'> Estado Civil: </span> ". $row['descripcion']."<br>";
              echo "<span class='acomodo'> DNI: </span> ". $row['dni']."<br>";
              echo "<span class='acomodo'> Celular: </span> ". $row['celular']."<br>";
              echo "<span class='acomodo'> Fijo: </span> ". $row['fijo']."<br>";
              echo "<span class='acomodo'> País: </span> ". $row['nombrePais']."<br>";
              echo "<span class='acomodo'> Estado/Provincia: </span> ". $row['nombreEstado']."<br>";
              echo "<span class='acomodo'> Ciudad: </span> ". $row['ciudad']."<br>";
              echo "<span class='acomodo'> Calle: </span> ". $row['calle']."<br>";
              echo "<span class='acomodo'> Metas: </span> ". $row['metas']."<br>";
            }
            echo "<h5><i class='fas fa-angle-right'></i> Idiomas</h5>";
            if(count($infoIdioma)==0){
              echo "<span class='acomodo'>El postulante no posee conocimientos sobre otro idioma.</span>";          
            }else{              
              foreach ($infoIdioma as $row){                                     
                echo "<span class='acomodo'> Nombre: </span> ". $row['nombreIdioma']."<br>";
                echo "<span class='acomodo subitem'> Oral: </span> ". $row['oral']."<br>";
                echo "<span class='acomodo subitem'> Escrito: </span> ". $row['escrito']."<br>";                
              }               
            }
            echo "<h5><i class='fas fa-angle-right'></i> Experiencia Laboral</h5>";
            if(count($infoExpLaboral)==0){
              echo "<span class='acomodo'>El postulante no posee experiencia laboral.</span>";          
            }else{
              foreach ($infoExpLaboral as $row){                      
                echo "<span class='acomodo'> Empresa: </span> ". $row['empresa']."<br>";
                echo "<span class='acomodo subitem'> Actividad: </span> ". $row['actividad']."<br>";
                echo "<span class='acomodo subitem'> Puesto: </span> ". $row['puesto']."<br>";
                echo "<span class='acomodo subitem'> Nivel: </span> ". $row['nivel']."<br>";
                echo "<span class='acomodo subitem'> País: </span> ". $row['pais']."<br>";
                echo "<span class='acomodo subitem'> Fecha Inicio: </span> ". $row['fecDesde']."<br>";
                echo "<span class='acomodo subitem'> Fecha Fin: </span> ". $row['fecHasta']."<br>";
                echo "<span class='acomodo subitem'> Area: </span> ". $row['area']."<br>";
                echo "<span class='acomodo subitem'> Descripción: </span> ". $row['descripcion']."<br>";
                echo "<span class='acomodo subitem'> Personas a Cargo: </span> ". $row['pCargo']."<br>";
                echo "<span class='acomodo subitem'> Personas de Referencia: </span> ". $row['pReferencia']."<br>";
              }        
            }
            echo "<h5><i class='fas fa-angle-right'></i> Estudio</h5>";                                    
              foreach ($infoEstudio as $row){                      
                echo "<span class='acomodo'> Casa de Estudio: </span> ". $row['casaEstudios']."<br>";
                echo "<span class='acomodo'> Nivel: </span> ". $row['nivel']."<br>";
                echo "<span class='acomodo'> Especialidad: </span> ". $row['especialidad']."<br>";
                echo "<span class='acomodo'> Fecha Inicio: </span> ". $row['fecDesde']."<br>";
                echo "<span class='acomodo'> Fecha Hasta: </span> ". $row['fecHasta']."<br>";                
              }                    
          ?>
        </div>
      </div>      
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="cerrarMD">Cerrar</button>        
      </div>
    </div>
  </div>
</div>