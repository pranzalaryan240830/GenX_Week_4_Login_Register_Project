package com.genx.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.genx.dao.LoginDao;
import com.genx.model.Login;

@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private LoginDao loginDao = new LoginDao(); 
    public LoginController() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher dispatcher = request.getRequestDispatcher("login/login.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String pass = request.getParameter("pass");
		Login loginData= new Login();
		loginData.setUsername(username);
		loginData.setPassword(pass);
		try {
			if(loginDao.validate(loginData)) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("todos/todos-list.jsp");
				dispatcher.forward(request, response);
			}
			else {
				request.setAttribute("NOTIFICATION", "Invalid Credentials! Not Registered?");
				RequestDispatcher dispatcher = request.getRequestDispatcher("login/login.jsp");
				dispatcher.forward(request, response);
			}
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

}
