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

        var items = $(".iEL");
        var btn = $("#addExpLab");

        if(dato == "S"){
            items.removeAttr('disabled');
            btn.removeAttr('disabled');
            items.prop('required',true);
        }else{
            items.attr('disabled','disabled');
            btn.attr('disabled','disabled');
            items.prop('required',false);
        }        
    });
    $(".radioID").change(function(){
        var dato = $('input[name=idiom]:checked').val();
        
        var items = $(".iI");
        var btn = $("#addIdioma");

        if(dato == "S"){
            items.removeAttr('disabled');
            btn.removeAttr('disabled');
            items.prop('required',true);
        }else{
            items.attr('disabled','disabled');
            btn.attr('disabled','disabled');
            items.prop('required',false);
        }
    });

    $("#submitPersona").click(function(e){
        e.preventDefault();
        var form = $("#submitForm").serialize();
        var flag = 0;        
        $("#submitForm").find('.checkForm').each(function() {
            var elemento= this;
            console.log("VALUE: "+elemento.value+" --- ID: "+elemento.id+" ---- DISABLED: "+$('#'+elemento.id).prop('disabled'));
            if(elemento.value=="" && $('#'+elemento.id).prop('disabled')==false){
                flag = 1;
            }
        });
        if(flag == 1){
            alert("Completar todos los campos antes de registrar al postulante");
        }else{
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
        }                    
    });  
    
    $("#addIdioma").click(function(){
        $(".deleteIdioma").unbind();
        var i = $(".iteracion").last().data('it')+1;

        var contenido = '<div class="row iteracion" data-it="'+i+'"><div class="col-lg-6">'+
                            '<div class="form-group">'+
                                '<label for="nIdioma'+i+'">Nombre:</label>'+
                                '<select name="nIdioma'+i+'" id="nIdioma'+i+'" class="iI form-control checkForm" disabled>'+            
                                '</select>'+
                            '</div>'+
                        '</div>'+
                        '<div class="col-lg-6">'+
                            '<div class="form-group">'+
                                '<label for="pOral'+i+'">Oral:</label>'+
                                '<select name="pOral'+i+'" id="pOral'+i+'" class="iI form-control checkForm" disabled>'+
                                    '<option value="" selected>Seleccione una opción</option>'+
                                    '<option value="Bajo">Bajo</option>'+
                                    '<option value="Intermedio">Intermedio</option>'+
                                    '<option value="Avanzado">Avanzado</option>'+
                                '</select>'+
                            '</div>'+
                        '</div>'+
                        '<div class="col-lg-6">'+
                            '<div class="form-group">'+
                                '<label for="pEscrito'+i+'">Escrito:</label>'+
                                '<select name="pEscrito'+i+'" id="pEscrito'+i+'" class="iI form-control checkForm" disabled>'+
                                '<option value="" selected>Seleccione una opción</option>'+
                                '<option value="Bajo">Bajo</option>'+
                                '<option value="Intermedio">Intermedio</option>'+
                                '<option value="Avanzado">Avanzado</option>'+
                                '</select>'+
                            '</div>'+
                        '</div>'+
                        '<div class="col-lg-1 offset-lg-5">'+
                            '<div class="form-group">'+
                                '<label for=""></label>'+                                
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
    $("#addExpLab").click(function(){
        $(".deleteExperiencia").unbind();
        var i = $(".iteracionn").last().data('it')+1;
        
        var contenido = '<div class="row iteracionn" data-it="'+i+'">'+
                            '<div class="col-lg-6">'+
                                '<div class="form-group">'+
                                    '<label for="empresa'+i+'">Empresa:</label>'+
                                    '<input type="text" name="empresa'+i+'" id="empresa'+i+'" class="iEL form-control checkForm" disabled>'+
                                '</div>'+
                            '</div>'+
                            '<div class="col-lg-6">'+
                                '<div class="form-group">'+
                                    '<label for="actividad'+i+'">Actividad:</label>'+
                                    '<input type="text" name="actividad'+i+'" id="actividad'+i+'" class="iEL form-control checkForm" disabled>'+
                                '</div>'+
                            '</div>'+
                            '<div class="col-lg-6">'+
                                '<div class="form-group">'+
                                    '<label for="puesto'+i+'">Puesto:</label>'+
                                    '<input type="text" name="puesto'+i+'" id="puesto'+i+'" class="iEL form-control checkForm" disabled>'+
                                '</div>'+
                            '</div>'+
                            '<div class="col-lg-6">'+
                                '<div class="form-group">'+
                                    '<label for="nivel'+i+'">Nivel:</label>'+
                                    '<input type="text" name="nivel'+i+'" id="nivel'+i+'" class="iEL form-control checkForm" disabled>'+
                                '</div>'+
                            '</div>'+
                            '<div class="col-lg-6">'+
                                '<div class="form-group">'+
                                    '<label for="pais'+i+'">País:</label>'+
                                    '<input type="text" name="pais'+i+'" id="pais'+i+'" class="iEL form-control checkForm" disabled>'+
                                '</div>'+
                            '</div>'+
                            '<div class="col-lg-6">'+
                                '<div class="form-group">'+
                                    '<label for="fDesde'+i+'">Fecha Desde:</label>'+
                                    '<input type="date" name="fDesde'+i+'" id="fDesde'+i+'" class="iEL form-control checkForm" disabled>'+
                                '</div>'+
                            '</div>'+
                            '<div class="col-lg-6">'+
                                '<div class="form-group">'+
                                    '<label for="fHasta'+i+'">Fecha Hasta:</label>'+
                                    '<input type="date" name="fHasta'+i+'" id="fHasta'+i+'" class="iEL form-control checkForm" disabled>'+
                                '</div>'+
                            '</div>'+
                            '<div class="col-lg-6">'+
                                '<div class="form-group">'+
                                    '<label for="aPuesto'+i+'">Area del Puesto:</label>'+
                                    '<input type="text" name="aPuesto'+i+'" id="aPuesto'+i+'" class="iEL form-control checkForm" disabled>'+
                                '</div>'+
                            '</div>'+
                            '<div class="col-lg-6">'+
                                '<div class="form-group">'+
                                    '<label for="descripcion'+i+'">Descripción:</label>'+
                                    '<textarea name="descripcion'+i+'" id="descripcion'+i+'" cols="15" rows="10" class="iEL form-control checkForm" disabled></textarea>'+
                                '</div>'+
                            '</div>'+
                            '<div class="col-lg-6">'+
                                '<div class="form-group">'+
                                    '<label for="pCargo'+i+'">Personas a Cargo:</label>'+
                                    '<input type="text" name="pCargo'+i+'" id="pCargo'+i+'" class="iEL form-control checkForm" disabled>'+
                                '</div>'+
                            '</div>'+
                            '<div class="col-lg-6">'+
                                '<div class="form-group">'+
                                    '<label for="pReferencia'+i+'">Persona de Referencia:</label>'+
                                    '<input type="text" name="pReferencia'+i+'" id="pReferencia'+i+'" class="iEL form-control checkForm" disabled>'+
                                '</div>'+
                            '</div>'+
                            '<div class="col-lg-1 offset-lg-5">'+
                                '<div class="form-group">'+
                                    '<label for=""></label>'+                                    
                                    '<button type="button" class="btn btn-danger deleteExperiencia"><i class="far fa-trash-alt"></i></button>'+
                                '</div>'+
                            '</div>'+
                        '</div>';
        $("#experiencias").append(contenido);
        $("#itEXPERIENCIAS").val(i);

        var opcionExperiencia = $('input[name=expLab]:checked').val();
        var items = $(".iEL");
        if(opcionExperiencia=="S"){
            items.removeAttr('disabled');
            items.prop('required',true);
        }

        i++;
        $(".deleteExperiencia").click(function(){
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