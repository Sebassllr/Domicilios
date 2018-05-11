<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>Mr Chessse</title>
  
	<spring:url value="/resources/css/chat.css" var="chat" />
	<spring:url value="/resources/js/jquery-3.3.1.min.js" var="jqueryJs" />
	<spring:url value="/resources/js/index.js" var="index" />
		
	<!-- Estilos -->
	<link href="${reboot}" rel="stylesheet" />
	<link rel="stylesheet" href="${chat}">
	
	<!-- Javasript -->
    <script src="${jqueryJs}"></script>
    <script src="${index}"></script>
  	<link href='https://fonts.googleapis.com/css?family=Amatic+SC' rel='stylesheet' type='text/css'>
  	
</head>

<body>
	 <div class="header">
        <div class="title-blue">Conéctate...
        <img class="img" ></div>
        <hr>
    </div>
	<div class="content __wait">
	 	<div class="links"> 
	 		<svg> 
	 			<g> 
	 				<path d="M11.8,17.7c-0.4,0.1-0.6-0.2-0.6-0.4c0-0.3,0-1.2,0-2.4c0-0.8-0.3-1.3-0.6-1.6c1.9-0.2,3.9-0.9,3.9-4.2 
	 					c0-0.9-0.3-1.7-0.9-2.3c0.1-0.2,0.4-1.1-0.1-2.3c-0.7-0.2-2.4,0.9-2.4,0.9c-0.7-0.2-1.4-0.3-2.1-0.3S7.6,5.3,6.9,5.5 
	 					c0,0-1.6-1.1-2.4-0.9c-0.5,1.2-0.2,2-0.1,2.3C3.9,7.4,3.6,8.2,3.6,9.2c0,3.3,2,4,3.9,4.2C7.3,13.6,7,14,6.9,14.5 
	 					c-0.5,0.2-1.7,0.6-2.5-0.7C4,13,3.2,12.9,3.2,12.9c-0.8,0-0.1,0.5-0.1,0.5C3.7,13.7,4,14.7,4,14.7c0.5,1.5,2.9,1,2.9,1 
	 					c0,0.7,0,1.4,0,1.6c0,0.2-0.2,0.5-0.6,0.4C3,16.6,0.5,13.4,0.5,9.6C0.5,4.9,4.3,1,9.1,1s8.6,3.8,8.6,8.6 
	 					C17.6,13.4,15.2,16.6,11.8,17.7z"/> 
	 			</g> 
	 		</svg> 
	 	</div> 
		<ul id="chatUl"></ul>
		<div class="_secondary">
			<div class="form">
				<button id="btnEnviar" class="">Enviar</button>
				<input id="nombre" placeholder="Ingresa tú nombre...">
				<textarea  id="mensaje" class="_twemoji_input" rows="7"></textarea>
				<p class="_disclaimer"><img class="emoji" src="https://twemoji.maxcdn.com/36x36/1f64c.png"> Envia tú mensaje <img class="emoji" src="https://twemoji.maxcdn.com/36x36/1f30d.png"></p>
			</div>
			<button  class="_huge load_more_msgs"><a class="btn btn-primary mb-2" href="despachador.html">Volver</a><img src="https://twemoji.maxcdn.com/36x36/1f447.png" class="emoji"></button>
		</div>
	</div>
<script src='http://twemoji.maxcdn.com/twemoji.min.js'></script>
<script src='https://rawgit.com/LevchenkoD/twemoji-input/master/emoji.js'></script>

   <script src="https://www.gstatic.com/firebasejs/4.13.0/firebase.js"></script>
   <script> 
    // Initialize Firebase
    var config = {
      apiKey: "AIzaSyC2u0d1Ph7mUk4YvX98XgMqn-0SUGUwZqY",
      authDomain: "despachadordb.firebaseapp.com",
      databaseURL: "https://despachadordb.firebaseio.com",
      projectId: "despachadordb",
      storageBucket: "despachadordb.appspot.com",
      messagingSenderId: "341989072839"
    };
    firebase.initializeApp(config);

    var txtNom = document.getElementById('nombre');
    var txtMensaje = document.getElementById('mensaje');
    var btnEnviar = document.getElementById('btnEnviar');
    var chatUl = document.getElementById('chatUl');

    btnEnviar.addEventListener("click", function(){
      var nom = txtNom.value;
      var mensaje = txtMensaje.value;
      //alert(nom);

      firebase.database().ref('chat').push({
        name: nom,
        message: mensaje

      });

    });

    firebase.database().ref('chat')
    .on('value', function(snapshot){
      var html = '';
      snapshot.forEach(function (e){
        var element = e.val();
        var nombre = element.name;
        var mensaje = element.message;
        html += "<li><b>"+ nombre + ": </b>"+ mensaje +" </li>";
      });
      chatUl.innerHTML = html;
    });

   </script> 
</body>

</html>
