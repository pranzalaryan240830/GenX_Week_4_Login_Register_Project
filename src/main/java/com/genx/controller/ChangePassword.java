package com.genx.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.genx.dao.changePassDao;
import com.genx.model.changePass;

@WebServlet("/reset")
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private changePassDao passDao = new changePassDao();
    public ChangePassword() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher dispatcher = request.getRequestDispatcher("login/checkEmail.jsp");
		dispatcher.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String newPass = request.getParameter("npass");
		String confPass = request.getParameter("cpass");
		changePass passData= new changePass();
		passData.setUser(username);
		passData.setNewPass(newPass);
		passData.setConfNewPass(confPass);
		try {
			if(passDao.validate(passData)) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("login/login.jsp");
				dispatcher.forward(request, response);
			}
			else {
				request.setAttribute("USER", username);
				request.setAttribute("ALERT", "Passwords don't match! Try again");
				RequestDispatcher dispatcher = request.getRequestDispatcher("login/resetPass.jsp");
				dispatcher.forward(request, response);
			}
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}

	}

}
