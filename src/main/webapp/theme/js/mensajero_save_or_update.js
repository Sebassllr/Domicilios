let Mensajeros_save_or_update = {};

(function() {
	
	Mensajeros_save_or_update.initializer = function(){
		window.parent.Mensajeros.saveOrUpdateForm = $('#saveMensajero');
	}
	
})();

$(function(){
	Mensajeros_save_or_update.initializer();
});