package com.domicilios.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Random;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.domicilios.entity.Pedido;
import com.sun.javafx.collections.MappingChange.Map;

@Controller
public class AjaxController {
	
    @RequestMapping("/ajax")
    public ModelAndView helloAjaxTest() {
        return new ModelAndView("ajax", "message", "Crunchify Spring MVC with Ajax and JQuery Demo..");
    }
    
    @RequestMapping(value = "/ajaxtest", method = RequestMethod.POST) 
    public @ResponseBody ResponseEntity<?> getTime() {
    	Pedido pedido = new Pedido("Cra25", "02", 1L, "123", "Hamb", 10700L, "Yo", "Sebas", 2L);
    	Pedido pedido2 = new Pedido("Cra25", "02", 1L, "123", "Chuzo", 10400L, "Tú", "Daniela", 3L);
    	Pedido pedido3 = new Pedido("Cra25", "02", 1L, "123", "Papas", 10200L, "ella", "Valentina", 4L);
    	ArrayList<HashMap<String, String>> pedidos = new ArrayList<>();
    	for (int i = 0; i < 10; i++) {
    		Pedido newPedido = new Pedido();
    		HashMap<String, String> pedidoData = new HashMap();
    		if(i%2 == 0) {
    			newPedido = pedido;
    		}else if(i%3 == 0) {
    			newPedido = pedido2;
    		}else {
    			newPedido = pedido3;
    		}
    		pedidoData.put("Pedido", newPedido.getProducto());
    		pedidoData.put("Fecha", newPedido.getFecha());
    		pedidoData.put("Mensajero", newPedido.getIdMensajero());
    		pedidos.add(pedidoData);
		}
        return new ResponseEntity<>(pedidos, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/putMensajeros", method = RequestMethod.PUT) 
    public @ResponseBody String putPedidos() {
        Random rand = new Random();
        float r = rand.nextFloat() * 100;
        String result = "<br>Next Random # is <b>" + r + "</b>. Generated on <b>" + new Date().toString() + "</b>";
        System.out.println("Debug Message from CrunchifySpringAjaxJQuery Controller.." + new Date().toString());
        return result;
    }
    
    @RequestMapping(value = "/deleteMensajeros", method = RequestMethod.DELETE) 
    public @ResponseBody String deleteMensajeros() {
        Random rand = new Random();
        float r = rand.nextFloat() * 100;
        String result = "<br>Next Random # is <b>" + r + "</b>. Generated on <b>" + new Date().toString() + "</b>";
        System.out.println("Debug Message from CrunchifySpringAjaxJQuery Controller.." + new Date().toString());
        return result;
    }
}
