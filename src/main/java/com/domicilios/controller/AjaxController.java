package com.domicilios.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.domicilios.entity.Pedido;

@Controller
public class AjaxController {
	
    @RequestMapping("/ajax")
    public ModelAndView helloAjaxTest() {
        return new ModelAndView("ajax", "message", "Crunchify Spring MVC with Ajax and JQuery Demo..");
    }
    
    @RequestMapping(value = "/ajaxtest", method = RequestMethod.PUT) 
    public @ResponseBody String getTime() {
    	Pedido pedido = new Pedido("Cra25", "02", 1L, "123", "Hamb", 10700L, "Yo", "Sebas", 2L);
    	Pedido pedido2 = new Pedido("Cra25", "02", 1L, "123", "Chuzo", 10400L, "Tú", "Daniela", 3L);
    	Pedido pedido3 = new Pedido("Cra25", "02", 1L, "123", "Papas", 10200L, "ella", "Valentina", 4L);
    	String pedidos = "";
    	for (int i = 0; i < 10; i++) {
    		Pedido newPedido = new Pedido();
    		if(i%2 == 0) {
    			newPedido = pedido;
    		}else if(i%3 == 0) {
    			newPedido = pedido2;
    		}else {
    			newPedido = pedido3;
    		}
    		pedidos += newPedido.getProducto() + "," + newPedido.getFecha() + "," +  newPedido.getIdMensajero() + ";";
		}
        return pedidos;
    }
    
    @RequestMapping(value = "/deletePedido/{name}", method = RequestMethod.DELETE) 
    public @ResponseBody String putPedidos(@PathVariable String name) {
    	Pedido pedido = new Pedido("Cra25", "02", 1L, "123", "Hamb", 10700L, "Yo", "Sebas", 2L);
    	Pedido pedido2 = new Pedido("Cra25", "02", 1L, "123", "Chuzo", 10400L, "Tú", "Daniela", 3L);
    	Pedido pedido3 = new Pedido("Cra25", "02", 1L, "123", "Papas", 10200L, "ella", "Valentina", 4L);
    	String pedidos = "";
    	boolean erased = false;
    	for (int i = 0; i < 10; i++) {
    		Pedido newPedido = new Pedido();
    		if(i%2 == 0) {
    			newPedido = pedido;
    		}else if(i%3 == 0) {
    			newPedido = pedido2;
    		}else {
    			newPedido = pedido3;
    		}
    		if(!erased) {
        		if(!name.equals(newPedido.getProducto())) {
        			pedidos += newPedido.getProducto() + "," + newPedido.getFecha() + "," +  newPedido.getIdMensajero() + ";";
        		}else {
        			erased = true;
        		}
    		}else {
    			pedidos += newPedido.getProducto() + "," + newPedido.getFecha() + "," +  newPedido.getIdMensajero() + ";";
    		}
		}
        return pedidos;
    }
    
    @RequestMapping(value = "/postMan", method = RequestMethod.POST) 
    public @ResponseBody String postman() {
    	
        return "";
    }
}
