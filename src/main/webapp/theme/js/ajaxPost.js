src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	
$(document).ready(function() {

	$("#menu1").click(function() {
		$.post("despachador", function(data) {
			$("#msg").html(data);
			alert("post listo!!");
		});

	});
	/*$.post(chat,JSON.stringify(formData)
	,
	function(){
	    alert("Post pedido");
	});
	});*/

});