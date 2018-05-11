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
let objects = [], mensajero = [], pedido = []

database.ref('mensajero').on('child_added', snapshot => {
  let child = snapshot.val()
  child['id'] = snapshot.key
  mensajero.push(child)
})