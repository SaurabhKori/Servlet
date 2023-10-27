package com.jsp.login_page.controler;

import java.io.IOException;



import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.login_page.dto.User;
import com.jsp.login_page.service.UserService;
@SuppressWarnings("serial")
@WebServlet("/login")
public class Login extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		String pass=req.getParameter("pass");
		UserService us=new UserService();
		User user=us.getbyemailservie(email);
	    System.out.println(user);
		if(user!=null) {
			if( pass.equals(user.getUserpass())) {
				
				HttpSession session=req.getSession();
				session.setAttribute("Email", email);
				
				req.getRequestDispatcher("home.jsp").forward(req, resp);
			}}
			else {
			   req.setAttribute("msg","<h2>incorrect email</h2>");
				req.getRequestDispatcher("index.jsp").forward(req, resp);
			}
		
	}
    
}
