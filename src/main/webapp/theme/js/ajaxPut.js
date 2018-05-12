$(document).ready(function() {
	
	$(document).on('submit', 'form', function (e) {
		event.preventDefault();
		fillDetailsToUpdateForm($(this));
	})
	
	$("#saveMensajero").submit(function(){
		event.preventDefault();
		ajaxPut();
	});
	
	function fillDetailsToUpdateForm(object){
		var nombre = $(object).find("input[name='nombre']").val();
		var id = $(object).find("input[name='id']").val();
		var placa = $(object).find("input[name='placa']").val();
		var telefono = $(object).find("input[name='telefono']").val();
		
		$("#nombre").val(nombre);
		$("#id").val(id);
		$("#placa").val(placa);
		$("#telefono").val(telefono);

	}
	
	function ajaxPut(){
    	var formData = {
    			id: $("#id").val(),
    			nombre : $("#nombre").val(),
    			placa : $("#placa").val(),
    			telefono : $("#telefono").val()
    		   
    	}
    	
    	console.log("formData before PUT: " + formData);
    	
    	$.ajax({
			type : "PUT",
			contentType : "application/json",
			url : despachador,
			data : JSON.stringify(formData),
			dataType : 'json',
			
			// SUCCESS response
			success : function(mensajero) {
				alert( "Put..." );
				
			}
    	// ERROR response 
		error : function(e) {
			alert("Error!")
			console.log("ERROR: ", e);
		}
});