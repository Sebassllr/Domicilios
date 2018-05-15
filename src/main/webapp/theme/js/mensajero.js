var Despachador = {};
(function (){
	firebase.initializeApp({
		 apiKey: "AIzaSyAbmQVqlyO2cUkvQNZMcCV5PI-lqIzg2VE",
		 authDomain: "pedidos-43e27.firebaseapp.com",
		 projectId: "pedidos-43e27"
	});
	var tabla = document.getElementById('tabla');
	var db = firebase.firestore();
	
	//Agregar documentos
	Despachador.agregarMensajero = function(){
		var nombre = document.getElementById('nombre').value;
		var id = document.getElementById('id').value;
		var placa = document.getElementById('placa').value;
		var telefono = document.getElementById('telefono').value;
		
		var string = '<tr> <th scope="row">' + ":c" + '</th> <td>' + nombre + '</td>' + 
		'<td>' + id + '</td><td>' + placa + '</td><td>' + telefono + '</td></tr>';
		$('#tabla').append(string);
		
		db.collection("Mensajeros").add({
			nombre: nombre,
		    cc: id,
		    placa: placa,
		    telefono: telefono
		    
		}).then(function(docRef) {
		    console.log("Mensajero creado: ", docRef.id);
		    document.getElementById('nombre').value = '';
		    document.getElementById('id').value = '';
		    document.getElementById('telefono').value = '';
		    document.getElementById('placa').value = '';
		}).catch(function(error) {
		    console.error("Error guardando mensajero: ", error);
		});
	}

	db.collection("Mensajeros").get().then(function(querySnapshot) {
	    querySnapshot.forEach(function(doc) {
	    	var data = doc;
	    	var string = '<tr> <th scope="row">' + data.id + '</th> <td>' + data.data().nombre + '</td>' + 
	    	'<td>' + data.data().id + '</td><td>' + data.data().placa + '</td><td>' + data.data().telefono + '</td></tr>' +
	    	'<td><button class="btn btn-danger" onclick ="Despachador.eliminarMensajero(' + doc.id + ')">Eliminar</button></td> '+
	        '<td><button class="btn btn-warning" onclick ="Despachador.actualizarMensajero(' + doc.id + ', ' + doc.data().nombre +', ' + doc.data().apellido +', ' + doc.data().telefono +', '+ doc.data().placa + ' )">Editar</button></td> </tr>';
	       $('#tabla').append(string);
	        console.log(doc.id, " => ", doc.data());
	    });
	});

	//Borrar datos
	Despachador.eliminarMensajero = function(id){
		db.collection("Mensajeros").doc(id).delete().then(function() {
		    console.log("Mensajero eliminado!");
		}).catch(function(error) {
		    console.error("Error eliminando mensajero: ", error);
		});
	}

	//Actualizar datos
	Despachador.actualizarMensajero = function(id, nombre, apellido, telefono, placa){
		document.getElementById('id').value = id;
		document.getElementById('nombre').value = nombre;
		document.getElementById('telefono').value = telefono;
		document.getElementById('placa').value = placa;
		var boton = getElementById('boton');
		boton.innerHTML = 'Editar';
		
		boton.onclick = function(){
			var mensajeroRef = db.collection("Mensajeros").doc(id);
			var id = document.getElementById('id').value;
			var nombre = document.getElementById('nombre').value;
			var telefono = document.getElementById('telefono').value;
			var placa = document.getElementById('placa').value;
			return mensajeroRef.update({
				id: id,
				nombre: nombre,
			    telefono: telefono,
			    placa: placa
			})
			.then(function() {
			    console.log("Mensajero actualizado!");
			    boton.innerHTML = 'Guardar';
				document.getElementById('id').value = '';
				document.getElementById('nombre').value = '';
				document.getElementById('telefono').value = '';
				document.getElementById('placa').value = '';
			    
			})
			.catch(function(error) {
			    console.error("Error actualizando: ", error);
			});
		}
	}

})();
