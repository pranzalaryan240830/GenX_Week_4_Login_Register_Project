package com.genx.model;
import java.io.Serializable;

public class changePass implements Serializable{
	private static final long serialVersionUID = 1L;
	private String user;
	private String newPass;
	private String confNewPass;
	public String getUser() {
		return user;
	}
	public void setUser(String Userr) {
		user = Userr;
	}
	
	public String getNewPass() {
		return newPass;
	}
	public void setNewPass(String pass) {
		newPass = pass;
	}
	public String getConfNewPass() {
		return confNewPass;
	}
	public void setConfNewPass(String pass) {
		confNewPass = pass;
	}

}
