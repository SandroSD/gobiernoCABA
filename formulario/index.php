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
    <script defer src="https://use.fontawesome.com/releases/v5.0.10/js/all.js" integrity="sha384-slN8GvtUJGnv6ca26v8EzVaR9DC58QEwsIk9q1QXdCU8Yu8ck/tL/5szYlBbqmS+" crossorigin="anonymous"></script>
    
    <link rel="stylesheet" href="registrarPersona.css">

</head>
<body>
    <div id="contenido">
        <div class="container-fluid">
            <div class="row">
                <form name="submitForm" id="submitForm" method="POST" class="form">
                    <div class="form-row">
                        <div class="col-lg-12">
                            <h1 align="center">Registrar Postulante</h1>
                        </div>                        
                        <div class="col-lg-12">
                            <h2>Datos Personales</h2>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="nombre">Nombre:</label>
                                <input type="text" name="nombre" id="nombre" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="apellido">Apellido:</label>
                                <input type="text" name="apellido" id="apellido" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <label>Sexo:</label>
                            <div class="form-check">                                
                                <input type="radio" name="sexo" id="" value="m" class="acomodo">
                                <label for="sexo" class="form-check-label acomodo">
                                    Masculino
                                </label><br>                
                                <input type="radio" name="sexo" id="" value="f" class="acomodo" checked>
                                <label for="sexo" class="form-check-label acomodo">
                                    Femenino
                                </label>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="estadoCivil">Estado Civil:</label>
                                <select name="estadoCivil" id="estadoCivil" class="form-control" required>
                                    
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="documento">DNI:</label>
                                <input type="text" name="documento" id="documento" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <h3>Teléfono</h3>
                        </div>
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-6">
                                    <label for="celular">Celular:</label>
                                    <input type="text" name="celular" id="celular" class="form-control" required>
                                </div>
                                <div class="col-lg-6">
                                    <label for="tfijo">Fijo:</label>
                                    <input type="text" name="tfijo" id="tfijo" class="form-control" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <h3>Dirección</h3>
                        </div>
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-3">
                                    <label for="paisDP">País:</label>
                                    <!--input type="text" name="pais" id="pais" class="form-control"-->
                                    <select name="paisDP" id="paisDP" class="form-control" required>
                                    
                                    </select>
                                </div>
                                <div class="col-lg-3">
                                    <label for="provincia">Provincia:</label>
                                    <!--input type="text" name="provincia" id="provincia" class="form-control"-->
                                    <select name="provincia" id="provincia" class="form-control" required>
                                    
                                    </select>
                                </div>
                                <div class="col-lg-3">
                                    <label for="ciudad">Ciudad:</label>
                                    <input type="text" name="ciudad" id="ciudad" class="form-control" required>
                                </div>
                                <div class="col-lg-3">
                                    <label for="calle">Calle:</label>
                                    <input type="text" name="calle" id="calle" class="form-control" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <h2>Objetivo Laboral</h2>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label for="metas">Metas a Cumplir:</label>
                                <textarea name="metas" id="metas" cols="30" rows="10" class="form-control" required></textarea>
                            </div>                    
                        </div>                        
                        <div class="col-lg-12">
                            <p><span class="subTit">Experiencia Laboral</span> Si <input type="radio" name="expLab" id="expSi" class="radioEL" value="S"> No <input type="radio" name="expLab" id="expNo" class="radioEL" value="N" checked></p>
                        </div>                
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="empresa">Empresa:</label>
                                <input type="text" name="empresa" id="empresa" class="iEL form-control" disabled>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="actividad">Actividad:</label>
                                <input type="text" name="actividad" id="actividad" class="iEL form-control" disabled>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="puesto">Puesto:</label>
                                <input type="text" name="puesto" id="puesto" class="iEL form-control" disabled>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="nivel">Nivel:</label>
                                <input type="text" name="nivel" id="nivel" class="iEL form-control" disabled>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="pais">País:</label>
                                <input type="text" name="pais" id="pais" class="iEL form-control" disabled>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="fDesde">Fecha Desde:</label>
                                <input type="date" name="fDesde" id="fDesde" class="iEL form-control" disabled>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="fHasta">Fecha Hasta:</label>
                                <input type="date" name="fHasta" id="fHasta" class="iEL form-control" disabled>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="aPuesto">Area del Puesto:</label>
                                <input type="text" name="aPuesto" id="aPuesto" class="iEL form-control" disabled>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="descripcion">Descripción:</label>
                                <textarea name="descripcion" id="descripcion" cols="15" rows="10" class="iEL form-control" disabled></textarea>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="pCargo">Personas a Cargo:</label>
                                <input type="text" name="pCargo" id="pCargo" class="iEL form-control" disabled>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="pReferencia">Persona de Referencia:</label>
                                <input type="text" name="pReferencia" id="pReferencia" class="iEL form-control" disabled>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <h2>Estudios</h2>                    
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="cEstudios">Casa de Estudios:</label>
                                <input type="text" name="cEstudios" id="cEstudios" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="nivelES">Nivel:</label>
                                <input type="text" name="nivelES" id="nivelES" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="especialidad">Especialidad:</label>
                                <input type="text" name="especialidad" id="especialidad" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="fDesdeEst">Fecha Desde:</label>
                                <input type="date" name="fDesdeEst" id="fDesdeEst" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="fHastaEst">Fecha Hasta:</label>
                                <input type="date" name="fHastaEst" id="fHastaEst" class="form-control" required    >
                            </div>
                        </div>
                        <div class="col-lg-11">
                            <span class="subTit">Idioma</span>
                            <div>                                
                                
                            </div>
                        </div>

                        <!--IDIOMAS-->
                        <div class="col-lg-1">
                            <!--input type="button" class="btn btn-success" id="addIdioma" value="Agregar Idioma"-->
                                Si <input type="radio" name="idiom" id="idiSi" class="radioID" value="S">
                                No <input type="radio" name="idiom" id="idiNo" class="radioID" value="N" checked>
                            <button type="button" class="btn btn-success" id="addIdioma"><i class="fas fa-plus"></i></button>
                        </div>
                        <div class="iteracion" data-it="0"></div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="nIdioma0">Nombre:</label>                                
                                <select name="nIdioma0" id="nIdioma0" class="iI form-control" disabled>
                                
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="pOral0">Oral:</label>                                
                                <select name="pOral0" id="pOral0" class="iI form-control" disabled>
                                    <option value="0" selected>Seleccione una opción</option>
                                    <option value="Bajo">Bajo</option>
                                    <option value="Intermedio">Intermedio</option>
                                    <option value="Avanzado">Avanzado</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="pEscrito0">Escrito:</label>                                
                                <select name="pEscrito0" id="pEscrito0" class="iI form-control" disabled>
                                    <option value="0" selected>Seleccione una opción</option>
                                    <option value="Bajo">Bajo</option>
                                    <option value="Intermedio">Intermedio</option>
                                    <option value="Avanzado">Avanzado</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-6"></div>
                        <div class="col-lg-12" id="idiomas">
                            <input type="hidden" id="itIDIOMAS" name="itIDIOMAS" value="">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-2">
                            <button class="btn btn-primary" id="menuPpal">Volver al Menú Principal</button>
                        </div>
                        <div class="offset-lg-9 col-lg-1">
                            <input type="submit" value="Registrar" class="btn btn-success" id="submitPersona">            
                        </div>
                    </div>                    
                </form>
                
            </div>
        </div>
    <script src="registrarPersona.js"></script>
</body>
</html>