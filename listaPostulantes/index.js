$(document).ready(function(){
    
    $(".activarModalInfo").click(function(){
        var idPostulante = $(this).data('id');
        activarModal(idPostulante);
    });
    
    $(".borrarPostulante").click(function(){
        var res = confirm("¿Desea eliminar al postulante?");
        if(res){
            var idPostulante = $(this).data('id');
            $.ajax({
                url : 'switch.php?op=borrarPostulante',
                data : {
                    idPostulante: idPostulante
                },
                type : 'POST',
                dataType : 'text',      
                success : function(data){
                    alert("El postulante ha sido eliminado");
                    setTimeout(function(){
                        location.reload();    
                    },1000);
                    
                }
            });
        }        
    });
    $("#menuPpal").click(function(){
        location.href = "../index.php";
    });
    $("#buscar").keydown(function(){
        var palabra = $("#buscar").val();
        $.ajax({
            url : 'switch.php?op=buscarPostulante',
            data : {
                palabra: palabra
            },
            type : 'POST',
            dataType : 'text',      
            success : function(data){
                $("#miTabla").html(data);
            }
        }); 
    });
});

function activarModal(idPostulante){
    $("#pegarModal").html('');        
    $.ajax({
        url : 'modalPostulante.php',
        data : {
            idPostulante: idPostulante
        },
        type : 'POST',
        dataType : 'text',      
        success : function(data){                
            $("#pegarModal").prepend(data);                
            $("#todaLaInfoPOS").modal('show');
            
        }
    });
}