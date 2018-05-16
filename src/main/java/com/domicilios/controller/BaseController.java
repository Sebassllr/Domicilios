package com.domicilios.controller;

import org.slf4j.LoggerFactory;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class BaseController {

	private static final String VIEW_INDEX = "index";
	private final static org.slf4j.Logger logger = LoggerFactory.getLogger(BaseController.class);
	
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
	
	@RequestMapping(value = "/mensajero", method = RequestMethod.GET)
	public String actualizarPage(ModelMap model) {
		logger.info("Se carga la vista de mensajero");
		return "mensajero";
	}
	
	
	@RequestMapping(value = "/pedido", method = RequestMethod.GET)
	public String agregarPedPage(ModelMap model) {
		logger.info("Se carga la vista de agregar pedido");
		return "pedido";
	}
	
	@RequestMapping(value = "/formBuscarMensajero", method = RequestMethod.GET)
	public String formBuscarMensajeroPage(ModelMap model) {
		logger.info("Se carga la vista de agregar pedido");
		return "formBuscarMensajero";
	}
		
}
