package com.domicilios.entity;

import javax.persistence.Entity;

@Entity
public class Mensajero {

	private Long id;
	
	private  String nombre;
	
	private  String apellido;
	
	private String telefono;
	
	private String placa;

	public Mensajero(Long id, String nombre, String telefono, String placa, String apellido) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.telefono = telefono;
		this.placa = placa;
		this.apellido = apellido;
	}
	
	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
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
	
}
