package com.domicilios.entities;

import com.sun.istack.internal.NotNull;

public class Mensajero {
	
	@NotNull
	private Long id;
	
	private  String nombre;
	
	private String telefono;
	
	private String placa;

	public Mensajero(Long id, String nombre, String telefono, String placa) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.telefono = telefono;
		this.placa = placa;
	}
	
	public Mensajero() {}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getPlaca() {
		return placa;
	}

	public void setPlaca(String placa) {
		this.placa = placa;
	}
	
}
