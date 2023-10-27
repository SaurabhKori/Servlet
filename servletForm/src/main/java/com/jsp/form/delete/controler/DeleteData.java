package com.jsp.form.delete.controler;

import java.io.IOException;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import com.jsp.form.userdaoservice.UserDaoService;

@SuppressWarnings("serial")
public class DeleteData extends GenericServlet {

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int iduser=Integer.parseInt(req.getParameter("id"));
	    UserDaoService us=new UserDaoService();
	    us.deleteuserdataService(iduser);
	    RequestDispatcher reqestDipather=req.getRequestDispatcher("database_table.jsp");
	    reqestDipather.forward(req, res);
		
	}

}
