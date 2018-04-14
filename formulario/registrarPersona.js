$(document).ready(function(){
    cargarEstadosCiviles();
    cargarPaises();
    cargarProvincia();
    cargarIdiomas(0);

    $("#menuPpal").click(function(){
        location.href="../index.php";
    });

    $(".radioEL").change(function(){
        var dato = $('input[name=expLab]:checked').val();
        console.log(dato);
        var items = $(".iEL");
        console.log(items);
        if(dato == "S"){
            items.removeAttr('disabled');
            items.prop('required',true);
        }else{
            items.attr('disabled','disabled');
            items.prop('required',false);
        }        
    });
    $(".radioID").change(function(){
        var dato = $('input[name=idiom]:checked').val();
        console.log(dato);
        var items = $(".iI");
        console.log(items);
        if(dato == "S"){
            items.removeAttr('disabled');
            items.prop('required',true);
        }else{
            items.attr('disabled','disabled');
            items.prop('required',false);
        }
    });

    $("#submitPersona").click(function(e){
        e.preventDefault();
        var form = $("#submitForm").serialize();
        console.log(form);
        $.ajax({
            url : 'switch.php?op=save',
            data : {form: form},
            type : 'POST',
            dataType : 'html',      
            success : function(data){    
                alert("Postulante Registrado Correctamente");     
                $("#submitForm")[0].reset();
                location.href="../index.php";
            }
        });
    });  
    
    $("#addIdioma").click(function(){
        $(".deleteIdioma").unbind();
        var i = $(".iteracion").last().data('it')+1;

        var contenido = '<div class="row iteracion" data-it="'+i+'"><div class="col-lg-6">'+
                            '<div class="form-group">'+
                                '<label for="nIdioma'+i+'">Nombre:</label>'+
                                '<select name="nIdioma'+i+'" id="nIdioma'+i+'" class="iI form-control" disabled>'+            
                                '</select>'+
                            '</div>'+
                        '</div>'+
                        '<div class="col-lg-6">'+
                            '<div class="form-group">'+
                                '<label for="pOral'+i+'">Oral:</label>'+
                                '<select name="pOral'+i+'" id="pOral'+i+'" class="iI form-control" disabled>'+
                                    '<option value="0" selected>Seleccione una opción</option>'+
                                    '<option value="Bajo">Bajo</option>'+
                                    '<option value="Intermedio">Intermedio</option>'+
                                    '<option value="Avanzado">Avanzado</option>'+
                                '</select>'+
                            '</div>'+
                        '</div>'+
                        '<div class="col-lg-6">'+
                            '<div class="form-group">'+
                                '<label for="pEscrito'+i+'">Escrito:</label>'+
                                '<select name="pEscrito'+i+'" id="pEscrito'+i+'" class="iI form-control" disabled>'+
                                '<option value="0" selected>Seleccione una opción</option>'+
                                '<option value="Bajo">Bajo</option>'+
                                '<option value="Intermedio">Intermedio</option>'+
                                '<option value="Avanzado">Avanzado</option>'+
                                '</select>'+
                            '</div>'+
                        '</div>'+
                        '<div class="col-lg-1 offset-lg-5">'+
                            '<div class="form-group">'+
                                '<label for=""></label>'+
                                '<!--input type="button" class="btn btn-danger deleteIdioma" value="Borrar Idioma"-->'+
                                '<button type="button" class="btn btn-danger deleteIdioma"><i class="far fa-trash-alt"></i></button>'+
                            '</div>'+
                        '</div></div>';
        $("#idiomas").append(contenido);
        cargarIdiomas(i);
        $("#itIDIOMAS").val(i); //guardo cantidad de iteraciones en un hidden para usar en el back.
        
        var opcionIdioma = $('input[name=idiom]:checked').val();
        var items = $(".iI");
        if(opcionIdioma=="S"){
            items.removeAttr('disabled');
            items.prop('required',true);
        }

        i++;        
        $(".deleteIdioma").click(function(){
            var miBloque = $(this).parent().parent().parent();
            miBloque.remove();            
        });
    });

});

function cargarEstadosCiviles(){
    $.ajax({
        url : 'switch.php?op=estCiv',
        data : {},
        type : 'POST',
        dataType : 'html',      
        success : function(data){         
            $("#estadoCivil").html(data);
        }
    });
}
function cargarPaises(){
    $.ajax({
        url : 'switch.php?op=cargarPais',
        data : {},
        type : 'POST',
        dataType : 'text',      
        success : function(data){         
            $("#paisDP").html(data);
        }
    });
}
function cargarProvincia(){
    $("#paisDP").change(function(){
        var idPais = $("#paisDP").val();
        console.log(idPais);
        $.ajax({
            url : 'switch.php?op=cargarProv',
            data : {idPais: idPais},
            type : 'POST',
            dataType : 'text',      
            success : function(data){         
                $("#provincia").html(data);
            }
        });
    });
}
function cargarIdiomas(numero){    
    $.ajax({
        url : 'switch.php?op=cargarIdiomas',
        data : {},
        type : 'POST',
        dataType : 'text',      
        success : function(data){         
            $("#nIdioma"+numero).html(data);
        }
    });    
}