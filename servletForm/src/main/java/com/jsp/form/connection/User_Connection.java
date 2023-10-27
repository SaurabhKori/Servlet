package com.jsp.form.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.cj.jdbc.Driver;

public class User_Connection {
	public static Connection usergetConnection() {
		try {
			Driver d=new Driver();
			DriverManager.registerDriver(d);
			String url="jdbc:mysql://localhost:3306/servlet";
			String pass="root";
			String name="root";
			return DriverManager.getConnection(url, name, pass);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
