let Mensajeros = {};

$( document ).ready(function() {

	Mensajeros.initializer = function(){
		$('.mensajero').dblclick(Mensajeros.popUpAsignar);
		$('#addMensajero').click(Mensajeros.popUpAdd);
		$('#eliminarMesajero').click(Mensajeros.popUpDelate);
		$('#actuMensajero').click(Mensajeros.popUpDate);
		$('#buscarMensajero').click(Mensajeros.popUpSearch);
		$('#addPedido').click(Mensajeros.popUpAddPedido);
	}

	Mensajeros.allowDrop = function(ev) {
    	ev.preventDefault();
	}

	Mensajeros.drag = function(ev) {
		var img = document.createElement("img");
	    ev.dataTransfer.setData("text", ev.target.id);
	    img.src = "http://www.motoexpress.com.uy/images/Icono.Express5.jpg";
	    ev.dataTransfer.setDragImage(img, 0, 0);
	}

	Mensajeros.drop = function (ev) {
	    ev.preventDefault();
	    var data = ev.dataTransfer.getData("text");
	    ev.target.appendChild(document.getElementById(data));
	}

	Mensajeros.popUpAsignar = function(){
		$('#popUpAsignar').bPopup({
            speed: 650,
            transition: 'slideIn',
	    	transitionClose: 'slideBack'
        });
	}

	Mensajeros.popUpAdd = function(){
		$('#popUpAdd').bPopup({
            speed: 650,
            transition: 'slideIn',
	    	transitionClose: 'slideBack'
        });
	}
	
	Mensajeros.popUpDelate = function(){
		$('#popUpDelate').bPopup({
            speed: 650,
            transition: 'slideIn',
	    	transitionClose: 'slideBack'
        });
	}
	
	Mensajeros.popUpDate = function(){
		$('#popUpDate').bPopup({
            speed: 650,
            transition: 'slideIn',
	    	transitionClose: 'slideBack'
        });
	}
	Mensajeros.popUpSearch = function(){
		$('#popUpSearch').bPopup({
            speed: 650,
            transition: 'slideIn',
	    	transitionClose: 'slideBack'
        });
	}
	Mensajeros.popUpAddPedido = function(){
		$('#popUpAddPedido').bPopup({
            speed: 650,
            transition: 'slideIn',
	    	transitionClose: 'slideBack'
        });
	}
});

$(function(){
	Mensajeros.initializer();
});
