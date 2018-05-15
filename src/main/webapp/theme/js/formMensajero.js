firebase.initializeApp({
			 apiKey: "AIzaSyAbmQVqlyO2cUkvQNZMcCV5PI-lqIzg2VE",
			 authDomain: "pedidos-43e27.firebaseapp.com",
			 projectId: "pedidos-43e27"
		});
	
		// Initialize Cloud Firestore through Firebase
		var db = firebase.firestore();
	
		db.collection("users").add({
		    first: "Ada",
		    last: "Lovelace",
		    born: 1815
		})
		.then(function(docRef) {
		    console.log("Document written with ID: ", docRef.id);
		})
		.catch(function(error) {
		    console.error("Error adding document: ", error);
		});