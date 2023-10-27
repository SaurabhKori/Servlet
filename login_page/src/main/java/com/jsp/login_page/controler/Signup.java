package com.jsp.login_page.controler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.login_page.dto.User;
import com.jsp.login_page.service.UserService;
@SuppressWarnings("serial")
@WebServlet("/signup")
public class Signup extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		long phone=Long.parseLong(req.getParameter("phone"));
		String pass=req.getParameter("pass");
		String gender=req.getParameter("gender");
		User user=new User(name, email, pass, gender, phone);
		UserService us=new UserService();
		us.setdetails(user);
		req.getRequestDispatcher("home.jsp").forward(req, resp);
		
		
	}

}
