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

    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" href="formulario/registrarPersona.css">

</head>
<body>
    <div id="contenido">
        <div class="container-fluid">
            <div class="row">                
                <div class="col-lg-6 offset-lg-2 mt-5">
                    <div id="contIndex">         
                        <div class="row">
                            <div class="col-lg-10">
                                <h1>Gobierno de la Ciudad Autónoma de Buenos Aires</h1>
                                <h3>Veni y trabaja con nosotros.</h3>
                            </div>
                            <div class="col-lg-2">
                                <img src="img/escudo.png" id="escudo">
                            </div>
                            <div class="col-lg-12">                                
                                <button id="regPersona" class="btn btn-primary"><i class="fas fa-user-plus"></i> Registrar Postulante</button>
                                <button id="mosPersona" class="btn btn-info"><i class="fas fa-list-ul"></i> Mostrar Postulantes Registrados</button>
                            </div>                            
                        </div>                        
                    </div>
                </div>                
            </div>
        </div>
    </div>

    <script src="index.js"></script>
</body>
</html>