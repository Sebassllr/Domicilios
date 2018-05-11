package com.domicilios.controller;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
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
		model.addAttribute("mensajero", new Mensajero());
		return "despachador";
	}
	
	@RequestMapping(value = "/chat", method = RequestMethod.GET)
	public String chatPage(ModelMap model) {
		logger.info("Se carga la vista de despachador");
		return "chat";
	}
	
	@RequestMapping(value = "/mensajero_save_or_update", method = RequestMethod.POST)
	public String saveMensajero(ModelMap model, Mensajero mensajero, BindingResult binding) {
		logger.info("Se carga la vista de despachador");		
		return "chat";
	}
}
