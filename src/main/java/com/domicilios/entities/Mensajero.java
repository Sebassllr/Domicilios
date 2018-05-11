package com.domicilios.entities;

public class Mensajero {
	
private Long id;
	
	private  String nombre;
	
	private String telefono;
	
	private String placa;
	
	private String apellido;

	public Mensajero(Long id, String nombre, String telefono, String placa, String apellido) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.telefono = telefono;
		this.placa = placa;
		this.apellido = apellido;
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
	
	public String getNomCompleto() {
		return nombre + apellido; 
	}
}
