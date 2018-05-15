var Despachador = {};
(function (){
	firebase.initializeApp({
		 apiKey: "AIzaSyAbmQVqlyO2cUkvQNZMcCV5PI-lqIzg2VE",
		 authDomain: "pedidos-43e27.firebaseapp.com",
		 projectId: "pedidos-43e27"
	});
	var tabla = document.getElementById('tabla');

	// Initialize Cloud Firestore through Firebase
	var db = firebase.firestore();
	//Agregar documentos
	function guardar(){
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
		    console.log("Document written with ID: ", docRef.id);
		    document.getElementById('nombre').value = '';
		    document.getElementById('id').value = '';
		    document.getElementById('placa').value = '';
		    document.getElementById('telefono').value = '';
		}).catch(function(error) {
		    console.error("Error adding document: ", error);
		});
		

	}


	db.collection("Mensajeros").get().then(function(querySnapshot) {
	    querySnapshot.forEach(function(doc) {
	    	var data = doc;
	    	
	    	var string = '<tr> <th scope="row">' + data.id + '</th> <td>' + data.data().nombre + '</td>' + 
	    	'<td>' + data.data().id + '</td><td>' + data.data().placa + '</td><td>' + data.data().telefono + '</td></tr>';
	       $('#tabla').append(string);

	        // doc.data() is never undefined for query doc snapshots
	        console.log(doc.id, " => ", doc.data());
	    });
	});
})();
