package com.domicilios.controller;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.domicilios.entities.Mensajero;

@Controller
public class BaseController {

	private static final String VIEW_INDEX = "index";
	private final static org.slf4j.Logger logger = LoggerFactory.getLogger(BaseController.class);
	
	//@Autowired;
	//private MensajeroService mensajeroService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String welcome(ModelMap model) {
		logger.info("Se carga la vista de Index");
		return VIEW_INDEX;

	}

	@RequestMapping(value = "/despachador", method = RequestMethod.GET)
	public String mainPage(ModelMap model) {
		logger.info("Se carga la vista de despachador");
		Mensajero mensajero = new Mensajero();
		model.addAttribute("mensajero", mensajero);
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
		if(!mensajero.getNombre().contains("@")) {
			binding.reject(	"mensajero.email", ":c");
		}
		//String hql = "From mensajero";
		//Query query = new Query(hql);
		//List<Object> mensajeros = query.list();
		//return query.list();
		
		//model.addAttribute("listaMensajeros", getMensajeros());
		if(binding.hasErrors()) {
			model.addAttribute("fallo","No fue correcto");
			model.addAttribute("mensajero", mensajero);
			
			return "chat";
		}
		
		
		
		//Guarda
		
		
		return "chat";
	}
}
