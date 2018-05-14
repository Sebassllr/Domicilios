const config = {
      apiKey: "AIzaSyC2u0d1Ph7mUk4YvX98XgMqn-0SUGUwZqY",
      authDomain: "despachadordb.firebaseapp.com",
      databaseURL: "https://despachadordb.firebaseio.com",
      projectId: "despachadordb",
      storageBucket: "despachadordb.appspot.com",
      messagingSenderId: "341989072839"
    };
firebase.initializeApp(config)
let database = firebase.database()
var Despachador = {};

Despachador.crearMensajero = function(){
	let mensajero = {};
	let form = document.getElementById('saveMensajero')
    form.addEventListener('submit', event => {
      event.preventDefault()
      let nombre = document.querySelector('#nombre').value
      let apellido = document.querySelector('#apellido').value
      let id = document.querySelector('#id').value
      let placa = document.querySelector('#placa').value
      let telefono = document.querySelector('#telefono').value
      database.ref().child('mensajero').push().key
      database.ref('mensajero/' + id).set({
        nombre,
        apellido,
        id,
        placa,
        telefono
      });
    });
}

Despachador.actualizarMensajero =  function(id, placa, telefono){
	 let form = document.getElementById('updateMensajero')
	  form.addEventListener('submit', event => {
      event.preventDefault()
      let id = document.querySelector('#id').value
      database.ref('mensajero/' + id).update({
		 placa: placa,
		 telefono: telefono
	 });
}

Despachador.eliminarMensajero = function(id) {
  database.ref().child('mensajero/' + id).remove();
}

Despachador.listarMensajero = function(id){
	var mensajeroRef = db.collection("mensajero");
	var query = mensajeroRef.where("id", "==", id);
	var nombre = query.nombre;
	var apellido = query.apellido;
	var html = '';
    html += "<li>"+ nombre + ": "+ apellido +" </li>";
    mesajeroUl.innerHTML = html;
}

Despachador.listarMensajero1 = function(){
	var mensajero = [];
	var mensajero = firebase.database().ref('mensajero');
	return pedidos.once('child_added').then(function(snapshot) {
		var todos = snapshot.val();
        return todos;
    	var html = '';
        html += "<li>"+ todos.nombre + ": "+ todos.apellido +" </li>";
        mesajeroUl.innerHTML = html;
        
	}).catch(function(error){
        alert('error:  ' + error);
	});
}