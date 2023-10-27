package com.jsp.form.controler;

import java.io.IOException;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.form.dto.User;
import com.jsp.form.userdao.UserDao;

@WebServlet(value="/update")
public class Update extends HttpServlet{
   @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	 int id=Integer.parseInt(req.getParameter("myid"));
     String name=req.getParameter("name");
     String email=req.getParameter("email");
     long phone=Long.parseLong(req.getParameter("phone"));
     String gender=req.getParameter("gender");
     String address=req.getParameter("address");
     User user=new User(id, name, email, phone, gender, address);
    
     UserDao ud=new UserDao();
    		ud.update(user);
    		req.getRequestDispatcher("databasetable.jsp").forward(req, resp);;
}
	
	

   
}
