$(document).ready(function(){
    cargarEstadosCiviles();
    cargarPaises();
    cargarProvincia();
    cargarIdiomas();

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
function cargarIdiomas(){    
    $.ajax({
        url : 'switch.php?op=cargarIdiomas',
        data : {},
        type : 'POST',
        dataType : 'text',      
        success : function(data){         
            $("#nIdioma").html(data);
        }
    });    
}