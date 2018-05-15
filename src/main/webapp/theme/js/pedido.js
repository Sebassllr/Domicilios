var Pedido = {};
(function (){
	firebase.initializeApp({
		 apiKey: "AIzaSyAbmQVqlyO2cUkvQNZMcCV5PI-lqIzg2VE",
		 authDomain: "pedidos-43e27.firebaseapp.com",
		 projectId: "pedidos-43e27"
	});
	var db = firebase.firestore();
	
	//Agregar documentos
	Pedido.agregarPedido = function(){
		var id = document.getElementById('id').value;
		var fecha = document.getElementById('fecha').value;
		var direccion = document.getElementById('direccion').value;
		var productos = document.getElementById('productos').value;
		var total = document.getElementById('total').value;
		var nomCliente = document.getElementById('nomCliente').value;
		var idCliente = document.getElementById('idCliente').value;
		
		//Aquí va la cajita
		var string = '<tr> <th scope="row">' + ":c" + '</th> <td>' + nombre + '</td>' + 
		'<td>' + id + '</td><td>' + placa + '</td><td>' + telefono + '</td></tr>';
		$('#tabla').append(string);
		
		db.collection("Pedido").add({
			id: id,
		    fecha: fecha,
		    direccion: direccion,
		    productos: productos,
		    total: total,
		    nomCliente: nomCliente,
		    idCliente: idCliente
		    
		}).then(function(docRef) {
		    console.log("Pedido creado: ", docRef.id);
		    confirm("Pedido creado");
		    document.getElementById('id').value = '';
		    document.getElementById('fecha').value = '';
		    document.getElementById('direccion').value = '';
		    document.getElementById('productos').value = '';
		    document.getElementById('total').value = '';
		    document.getElementById('nomCliente').value = '';
		    document.getElementById('idCliente').value = '';
		}).catch(function(error) {
		    console.error("Error guardando pedido: ", error);
		});
	}
})();