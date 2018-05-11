let Mensajeros = {};

$( document ).ready(function() {

	Mensajeros.initializer = function(){
		$('.mensajero').dblclick(Mensajeros.popUpAsignar);
		$('#addMensajero').click(Mensajeros.popUpAdd);
		$('#eliminarMesajero').click(Mensajeros.popUpDelete);
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
		$dialog = $('<div></div>').html('<iframe src="chat" class=""><iframe>').dialog({
			autoOpen: false,
			modal: true,
			height: 500,
			width: 500,
			buttons:{
				"Guardar" : {
					text: 'Guardar',
					click: function(){
						alert("Funciono Valen :D");
					}
				}
			},
			close: function(){
				console.log('bai :c');
			}
		});
		
		$dialog.dialog('open');
		return $dialog;
		
//		$('#popUpAdd').bPopup({
//            speed: 650,
//            transition: 'slideIn',
//	    	transitionClose: 'slideBack'
//        });
	}
	
	Mensajeros.popUpDelete = function(){
		$dialog = $('<div></div>').html('<iframe src="chat" class=""><iframe>').dialog({
			autoOpen: false,
			modal: true,
			height: 500,
			width: 500,
			buttons:{
				"Eliminar" : {
					text: 'Eliminar',
					click: function(){
						alert("Eliminado.");
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
		$dialog = $('<div></div>').html('<iframe src="chat" class=""><iframe>').dialog({
			autoOpen: false,
			modal: true,
			height: 500,
			width: 500,
			buttons:{
				"Actualizar" : {
					text: 'Actualizar',
					click: function(){
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
		$dialog = $('<div></div>').html('<iframe src="chat" class=""><iframe>').dialog({
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
		$dialog = $('<div></div>').html('<iframe src="chat" class=""><iframe>').dialog({
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
});

$(function(){
	Mensajeros.initializer();
});
