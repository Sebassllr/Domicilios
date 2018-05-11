<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>

		<spring:url value="/resources/css/main.css" var="main" />
		<spring:url value="/resources/js/jquery-3.3.1.min.js" var="jqueryJs" />
		<spring:url value="/resources/js/bootstrap.js" var="boostrapJs" />
		<spring:url value="/resources/js/bPopUp.js" var="bpopup" />
		<spring:url value="/resources/js/mensajero_save_or_update.js" var="mainJs" />	
		<spring:url var="mensajeroSave" value="/mensajero_save_or_update"></spring:url>
		
	    <!-- CNDS -->
	    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
	   	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" ></script>
	   	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" ></script>
	
		<!-- Javasript -->
	    <script src="${jqueryJs}"></script>
	    <script src="${boostrapJs}"></script>
	    <script src="${bpopup}"></script>
	    <script src="${mainJs}"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		
		<!-- Estilos -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link href="https://fonts.googleapis.com/css?family=Coiny" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Rammetto+One" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet">
		<link href="${main}" rel="stylesheet" />
	</head>
	<body>
		<form:form  method="POST" id="saveMensajero" class="form__reg">
			<form:input class="input" path="nombre" id="nombre" />
			<form:input class="input" path="apellido" id="apellido" />
			<form:input class="input" path="id" id="id"/>
			<form:input class="input" path="placa" id="placa"/>
			<form:input class="input" path="telefono" id="telefono"/>
			<button id="btnEnviar" class="">Enviar</button>
		</form:form>
		
	<script src="https://www.gstatic.com/firebasejs/4.13.0/firebase.js"></script>
	<script>
		 var config = {
		      apiKey: "AIzaSyC2u0d1Ph7mUk4YvX98XgMqn-0SUGUwZqY",
		      authDomain: "despachadordb.firebaseapp.com",
		      databaseURL: "https://despachadordb.firebaseio.com",
		      projectId: "despachadordb",
		      storageBucket: "despachadordb.appspot.com",
		      messagingSenderId: "341989072839"
		  };
		 
		  firebase.initializeApp(config);
		  let txtNom = document.getElementById('nombre');
		  let txtApellido = document.getElementById('apellido');
		  let txtId = document.getElementById('id');
		  let txtPlaca = document.getElementById('placa');
		  let txtTelefono = document.getElementById('telefono');
		  let btnEnviar = document.getElementById('btnEnviar');

		  btnEnviar.addEventListener("click", function(){
		    let nom = txtNom.value;
		    let apellido = txtApellido.value;
		    let id = txtId.value;
		    let placa = txtPlaca.value;
		    let telefono = txtTelefono.value;

		  firebase.database().ref('mensajero').push({
		        nombre: nom,
		        apellido: apellido,
		        id: id,
		        placa: placa,
		        telefono: telefono
		      });
		   });
		  
		  
    </script>
	</body>
</html>