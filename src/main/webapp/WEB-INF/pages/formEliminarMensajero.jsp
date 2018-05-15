<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

<spring:url value="/resources/css/main.css" var="main" />
<spring:url value="/resources/js/jquery-3.3.1.min.js" var="jqueryJs" />
<spring:url value="/resources/js/bootstrap.js" var="boostrapJs" />
<spring:url value="/resources/js/bPopUp.js" var="bpopup" />
<spring:url value="/resources/js/main.js" var="mainJs" />
<spring:url value="/resources/js/formMensajero.js" var="formMensajeroJs" />

<!-- CNDS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
	integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
	integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
	crossorigin="anonymous"></script>

<!-- Javasript -->
<script src="${jqueryJs}"></script>
<script src="${boostrapJs}"></script>
<script src="${bpopup}"></script>
<script src="${mainJs}"></script>
<script src="${formMensajeroJs}"></script>

<script src="https://www.gstatic.com/firebasejs/4.11.0/firebase.js"></script>
<script
	src="https://www.gstatic.com/firebasejs/4.11.0/firebase-firestore.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.flash.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.print.min.js"></script>

<!-- Estilos -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.flash.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.print.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<script type="text/javascript">
		firebase.initializeApp({
			 apiKey: "AIzaSyAbmQVqlyO2cUkvQNZMcCV5PI-lqIzg2VE",
			 authDomain: "pedidos-43e27.firebaseapp.com",
			 projectId: "pedidos-43e27"
		});
	
		// Initialize Cloud Firestore through Firebase
		var db = firebase.firestore();
	//Agregar documentos
	function guardar(){
		var nombre = document.getElementById('nombre').value;
		var id = document.getElementById('id').value;
		var placa = document.getElementById('placa').value;
		var telefono = document.getElementById('telefono').value;
		
		db.collection("Mensajeros").add({
			nombre: nombre,
		    cc: id,
		    placa: placa,
		    telefono: telefono
		    
		})
		.then(function(docRef) {
		    console.log("Document written with ID: ", docRef.id);
		    document.getElementById('nombre').value = '';
		    document.getElementById('id').value = '';
		    document.getElementById('placa').value = '';
		    document.getElementById('telefono').value = '';
		})
		.catch(function(error) {
		    console.error("Error adding document: ", error);
		});
		
	
	}
	//lee datos
	var tabla = document.getElementById('tabla');
	db.collection("mensajeros").onSnapshot((querySnapshot) => {
	  tabla.innerHTML = '';
	  querySnapshot.forEach((doc) => {
	       console.log(`${doc.id} => ${doc.data()}`);
	       tabla.innerHTML += `
		     <tr>
		     <th scope="row">${doc.id}</th>
		     <td>${doc.data().nombre}</td>
		     <td>${doc.data().id}</td>
		     <td>${doc.data().placa}</td>
		     <td>${doc.data().telefono}</td>
	     
		   </tr>
		   `
	   });
	});
	
		
	</script>
	<body>
	<div class="container">
		<h2>Mensajeros</h2>
		<input type="text" id="nombre" placeholder="nombre" class="form-control my-3"> <input type="text" id="id" placeholder="id" class="form-control my-3"> 
		<input type="text" id="placa" placeholder="placa" class="form-control my-3">
		<input type="text" id="telefono" placeholder="telefono"	class="form-control my-3">
		<button class="btn btn-info" id="boton" onClick="guardar()">Guardar</button>
		
		<table class="table">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Nombre</th>
					<th scope="col">Apellido</th>
					<th scope="col">Teléfono</th>
					<th scope="col">Placa</th>
					<th scope="col">Editar</th>
					<th scope="col">Eliminar</th>
				</tr>
			</thead>
			<tbody id="tabla">
				
			</tbody>
		</table>
	</div>

</body>


</html>