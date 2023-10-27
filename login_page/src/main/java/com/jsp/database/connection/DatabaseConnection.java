package com.jsp.database.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.cj.jdbc.Driver;

public class DatabaseConnection {
	public static Connection getConnection() {
		try {
			Driver d=new Driver();
			DriverManager.registerDriver(d);
			String url="jdbc:mysql://localhost:3306/servvlet_login_page";
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
