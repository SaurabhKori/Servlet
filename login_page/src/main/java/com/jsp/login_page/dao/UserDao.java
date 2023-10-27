package com.jsp.login_page.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.jsp.database.connection.DatabaseConnection;
import com.jsp.login_page.dto.User;

public class UserDao {
	Connection con=DatabaseConnection.getConnection();
	public User setdetail(User u) {
		String ins="Insert into signup(user_name,user_email,user_phone,user_gender,user_pass) value(?,?,?,?,?)";
		try {
			PreparedStatement pre=con.prepareStatement(ins);
			pre.setString(1, u.getUsername());
			pre.setString(2, u.getUseremail());
			pre.setLong(3, u.getUserphone());
			pre.setString(4, u.getUsergender());
			pre.setString(5, u.getUserpass());
			pre.execute();
			return u;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public List<User> fetchAllDetail() {
		String fetch="Select * from signup";
		try {
			PreparedStatement pre=con.prepareStatement(fetch);
			ResultSet result=pre.executeQuery();
			List<User> l1=new ArrayList<User>();
			while(result.next()) {
				User user=new User();
				user.setId(result.getInt("user_id"));
				user.setUsername(result.getString("user_name"));
				user.setUseremail(result.getString("user_email"));
				user.setUserphone(result.getLong("user_phone"));
				user.setUsergender(result.getString("user_gender"));
				user.setUserpass(result.getString("user_pass"));
				l1.add(user);
				
			}
			return l1;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public User getbyemail(String email) {
	  try {
		  String fetch="select * from signup where user_email='"+email+"'";
		  
		Statement statement=con.createStatement();
		ResultSet rs=statement.executeQuery(fetch);
		
		if(rs.next()) {
		User	u=new User();
			u.setId(rs.getInt("user_id"));
			u.setUsername(rs.getString("user_name"));
			u.setUseremail(rs.getString("user_email"));
			u.setUsergender(rs.getString("user_gender"));
			u.setUserpass(rs.getString("user_pass"));
			u.setUserphone(rs.getLong("user_phone"));
			return u;
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  return null;
	}

}
