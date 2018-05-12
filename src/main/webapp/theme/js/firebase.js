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

function deleteFirebase(id) {
  database.ref().child('mensajero/' + id).remove();
}

function updateFirebase(id, nom, ape, placa, tele) {
  database.ref('mensajero/' + id).update({
    nom: nom,
    apellido: ape,
    placa: placa,
    tele: tele
  })
}