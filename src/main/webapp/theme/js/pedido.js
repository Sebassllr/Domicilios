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
var Pedido = {};

Pedido.crearPedido = function(){
	let pedido = {};
	let form = document.getElementById('addPedido')
    form.addEventListener('submit', event => {
      event.preventDefault()
      let direccion = document.querySelector('#direccion').value
      let fecha = document.querySelector('#fecha').value
      let id = document.querySelector('#id').value
      let producto = document.querySelector('#producto').value
      let total = document.querySelector('#total').value
      let producto = document.querySelector('#producto').value
      let cliente = document.querySelector('#cliente').value
      let nombreCliente = document.querySelector('#nombreCliente').value   
      database.ref().child('pedido').push().key
      database.ref('pedido/' + id).set({
        direccion,
        fecha,
        id,
        producto,
        total,
        producto,
        cliente,
        nombreCliente
      });
    });
}

Pedido.asignarMesajero =  function(idMensajero){
	let form = document.getElementById('addPedido')
	  let nombreCliente = document.querySelector('#nombreCliente').value
	  database.ref().child('pedido').push().key
      database.ref('pedido/' + id).set({
        direccion,
      }
}