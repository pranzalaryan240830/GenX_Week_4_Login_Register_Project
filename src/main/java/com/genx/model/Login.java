package com.genx.model;

import java.io.Serializable;

public class Login implements Serializable{
	private static final long serialVersionUID = 1L;
	private String username;
	private String pass;
	public String getUsername() {
		return username;
	}
	public void setUsername(String user) {
		username = user;
	}
	public String getPassword() {
		return pass;
	}
	public void setPassword(String pass) {
		this.pass = pass;
	}
	
}
