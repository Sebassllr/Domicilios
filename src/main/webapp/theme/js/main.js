var Mensajeros = {};

(function() {

	Mensajeros.saveOrUpdateForm = "";
	
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
		$dialog = $('<div></div>').html('<iframe id="addFrame" src="formActualizarMensajero" class=""></iframe>').dialog({
			autoOpen: false,
			modal: true,
			height: 500,
			width: 500,
			buttons:{
				"Guardar" : {
					text: 'Guardar',
					'class': 'btn__submit',
					click: function(){
						Mensajeros.saveOrUpdateForm.submit();
					}
				},
				"Cancelar" : {
					text: 'Cancelar',
					'class': 'btn__reset',
					click: function(){
						$(this).dialog('close');
					}
				}
			},
			close: function(){
				console.log('bai :c');
			}
		});

		$dialog.dialog('open');
		return $dialog;
	}
	
	Mensajeros.popUpDelete = function(){
		$dialog = $('<div></div>').html('<iframe id="addFrame" src="formEliminarMensajero" class=""><iframe>').dialog({
			autoOpen: false,
			modal: true,
			height: 500,
			width: 500,
			buttons:{
				"Eliminar" : {
					text: 'Eliminar',
					'class': 'btn__submit',
					click: function(){
						Mensajeros.saveOrUpdateForm.submit();
					}
				}
			},
			close: function(){
				console.log('bai :c');
			}
		});
		
		$dialog.dialog('open');
		return $dialog;
		/*$('#popUpDelete').bPopup({
            speed: 650,
            transition: 'slideIn',
	    	transitionClose: 'slideBack'
        });*/
	}
	
	Mensajeros.popUpDate = function(){
		$dialog = $('<div></div>').html('<iframe src="formActualizarMensajero" class=""><iframe>').dialog({
			autoOpen: false,
			modal: true,
			height: 500,
			width: 500,
			buttons:{
				"Actualizar" : {
					text: 'Actualizar',
					click: function(){
						Mensajeros.saveOrUpdateForm.submit();
						alert("Actualizado.");
					}
				}
			},
			close: function(){
				console.log('bai :c');
			}
		});
		
		$dialog.dialog('open');
		return $dialog;
		/*$('#popUpDate').bPopup({
            speed: 650,
            transition: 'slideIn',
	    	transitionClose: 'slideBack'
        });*/
	}
	
	Mensajeros.popUpSearch = function(){
		$dialog = $('<div></div>').html('<iframe src="formBuscarMensajero" class=""><iframe>').dialog({
			autoOpen: false,
			modal: true,
			height: 500,
			width: 500,
			buttons:{
				"Buscar" : {
					text: 'Buscar',
					click: function(){
						alert("Buscado.");
					}
				}
			},
			close: function(){
				console.log('bai :c');
			}
		});
		
		$dialog.dialog('open');
		return $dialog;
		/*$('#popUpSearch').bPopup({
            speed: 650,
            transition: 'slideIn',
	    	transitionClose: 'slideBack'
        });*/
	}
	
	Mensajeros.popUpAddPedido = function(){
		$dialog = $('<div></div>').html('<iframe src="formAgregarPedido" class=""><iframe>').dialog({
			autoOpen: false,
			modal: true,
			height: 500,
			width: 500,
			buttons:{
				"Guardar" : {
					text: 'Guardar',
					click: function(){
						alert("Guardado.");
					}
				}
			},
			close: function(){
				console.log('bai :c');
			}
		});
		
		$dialog.dialog('open');
		return $dialog;
		
		/*$('#popUpAddPedido').bPopup({
            speed: 650,
            transition: 'slideIn',
	    	transitionClose: 'slideBack'
        });*/
	}
})();

function dropdownMensajero() {
	document.getElementById("myDropdown").classList.toggle("show");
	

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
	if (!event.target.matches('.dropbtn')) {

		var dropdowns = document.getElementsByClassName("dropdown-menu");
		var i;
		for (i = 0; i < dropdowns.length; i++) {
			var openDropdown = dropdowns[i];
			if (openDropdown.classList.contains('show')) {
				openDropdown.classList.remove('show');
			}
		}
	}
}

function dropdownMensajero2() {
	document.getElementById("myDropdown2").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
	if (!event.target.matches('.dropbtn')) {

		var dropdowns = document.getElementsByClassName("dropdown-menu");
		var i;
		for (i = 0; i < dropdowns.length; i++) {
			var openDropdown = dropdowns[i];
			if (openDropdown.classList.contains('show')) {
				openDropdown.classList.remove('show');
			}
		}
	}
}

$(function() {
	Mensajeros.initializer();

});
