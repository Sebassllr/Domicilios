package com.domicilios.controller;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.domicilios.entity.Mensajero;
import com.domicilios.service.MensajeroService;

@Controller
public class BaseController {

	private static final String VIEW_INDEX = "index";
	private final static org.slf4j.Logger logger = LoggerFactory.getLogger(BaseController.class);
	
	@Autowired
	MensajeroService mensajeroService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String welcome(ModelMap model) {
		logger.info("Se carga la vista de Index");
		return VIEW_INDEX;

	}

	@RequestMapping(value = "/despachador", method = RequestMethod.GET)
	public String mainPage(ModelMap model) {
		logger.info("Se carga la vista de despachador");
		return "despachador";
	}
	
	@RequestMapping(value = "/chat", method = RequestMethod.GET)
	public String chatPage(ModelMap model) {
		logger.info("Se carga la vista de chat");
		return "chat";
	}
	
	@RequestMapping(value = "/formActualizarMensajero", method = RequestMethod.GET)
	public String actualizarPage(ModelMap model) {
		logger.info("Se carga la vista de actualizar mensajero");
		return "formActualizarMensajero";
	}
	
	@RequestMapping(value = "/formAgregarMensajero", method = RequestMethod.GET)
	public String agregarMenPage(ModelMap model) {
		logger.info("Se carga la vista de agregar mensajero");
		model.addAttribute("mensajero", new Mensajero());
		return "formAgregarMensajero";
	}
	
	@RequestMapping(value = "/formBuscarMensajero", method = RequestMethod.GET)
	public String buscarPage(ModelMap model) {
		logger.info("Se carga la vista de buscar mensajero");
		return "formBuscarMensajero";
	}
	
	@RequestMapping(value = "/formEliminarMensajero", method = RequestMethod.GET)
	public String eliminarPage(ModelMap model) {
		logger.info("Se carga la vista de eliminar mensajero");
		return "formEliminarMensajero";
	}
	
	@RequestMapping(value = "/formAgregarPedido", method = RequestMethod.GET)
	public String agregarPedPage(ModelMap model) {
		logger.info("Se carga la vista de agregar pedido");
		return "formAgregarPedido";
	}
	
	@RequestMapping(value = "/mensajero_save_or_update", method = RequestMethod.PUT)
	public String saveOrUpdate(@ModelAttribute Mensajero mensajero, BindingResult bindingResult, ModelMap model) {
		logger.info("Se procede a guardar el mensajero");
		
		return "chat";
	}
}
