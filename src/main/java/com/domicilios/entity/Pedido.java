package com.domicilios.entity;

import javax.persistence.Entity;

@Entity

public class Pedido {

private String direccion;
	
	private String fecha;
	
	private Long id;
	
	private String idMensajero;
	
	private String producto;
	
	private Long total;
	
	private String cliente;
	
	private String nombreCliente;
	
	private Long idCliente;
	
	public Pedido(String direccion, String fecha, Long id, String idMensajero, String producto, Long total,
			String cliente, String nombreCliente, Long idCliente) {
		super();
		this.direccion = direccion;
		this.fecha = fecha;
		this.id = id;
		this.idMensajero = idMensajero;
		this.producto = producto;
		this.total = total;
		this.cliente = cliente;
		this.nombreCliente = nombreCliente;
		this.idCliente = idCliente;
	}
	
	public Pedido() {}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getIdMensajero() {
		return idMensajero;
	}

	public void setIdMensajero(String idMensajero) {
		this.idMensajero = idMensajero;
	}

	public String getProducto() {
		return producto;
	}

	public void setProducto(String producto) {
		this.producto = producto;
	}

	public Long getTotal() {
		return total;
	}

	public void setTotal(Long total) {
		this.total = total;
	}

	public String getCliente() {
		return cliente;
	}

	public void setCliente(String cliente) {
		this.cliente = cliente;
	}

	public Long getIdCliente() {
		return idCliente;
	}

	public void setIdCliente(Long idCliente) {
		this.idCliente = idCliente;
	}
	
	public String getNombreCliente() {
		return nombreCliente;
	}

	public void setNombreCliente(String nombreCliente) {
		this.nombreCliente = nombreCliente;
	}
}
