window.onload = inicializar;

var form;

function inicializar(){
	form = document.getElementById("form");
	form.addEventListener("submit", autentificar, false);
}

function autentificar(event){
	event.preventDefault();
	var user = event.target.email.value;
	var pss = event.target.password.value;

	firebase.auth().signInWithEmailAndPassword(user, pss)
		.then(function(result){
			alert("Usuario valido");
			window.location.href = "despachador.html"
		})
		.catch(function(error){
			alert("Usuario incorrecto");
		});
}
