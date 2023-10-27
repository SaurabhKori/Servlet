package com.jsp.form.controler;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import com.jsp.form.dto.User;
import com.jsp.form.userdaoservice.UserDaoService;

public class InsertUpdateDelete implements Servlet {

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ServletConfig getServletConfig() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException{
		// TODO Auto-generated method stub
		UserDaoService serv=new UserDaoService();
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		long phone=Long.parseLong(req.getParameter("phone"));
		String gender=req.getParameter("gender");
		String address=req.getParameter("address");
		User user=new User(name, email, phone, gender, address);
		serv.insertUserDaoService(user);
		System.out.println("Name     :"+name);
		System.out.println("Email    :"+email);
		System.out.println("Phone    :"+phone);
		System.out.println("Gender   :"+gender);
		System.out.println("Address  :"+address);
		PrintWriter  write= res.getWriter();
		write.write("<html><body>");
		write.write("<h3>Name-->"+name+"<h3><br>");
		write.write("<h3>Email-->  "+email+"<h3><br>");
		write.write("<h3>Phone-->  "+phone+"<h3><br>");
		write.write("<h3>Gender-->  "+gender+"<h3><br>");
		write.write("<h3>Address-->  "+address+"<h3><br>");
		write.write("</body></html>");
		RequestDispatcher d=req.getRequestDispatcher("databasetable.jsp");
		d.forward(req, res);
//		d.include(req, res);
		
		
		
	}

	@Override
	public String getServletInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}
