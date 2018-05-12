$(document).ready(function() {
	
	$(#menu1).click(function(){
		var formData = {
				nombre : $("#nombre").val(),
	    		id :  $("#id").val()
		}
		
        $.post(despachador,JSON.stringify(formData)
        ,
        function(){
            alert("Post pedido");
        });
    });
	
});