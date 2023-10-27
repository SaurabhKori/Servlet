package com.jsp.form.userdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.jsp.form.connection.User_Connection;
import com.jsp.form.dto.User;


public class UserDao {
	Connection con=User_Connection.usergetConnection();
	public User insertUserDao(User user) {
		String inserquery="Insert into user(username,useremail,userphone,usergender,useraddress) value(?,?,?,?,?)";
		try {
		PreparedStatement preparestatement=	con.prepareStatement(inserquery);
		preparestatement.setString(1, user.getUsername());
		preparestatement.setString(2, user.getUseremail());
		preparestatement.setLong(3, user.getUserphone());
		preparestatement.setString(4, user.getUsergender());
		preparestatement.setString(5, user.getUseraddress());
		preparestatement.execute();
		return user;
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
//	display 
	public List<User> displayAllUser(){
		String select="Select * from user";
		try {
		PreparedStatement prepare	=con.prepareStatement(select);
		ResultSet resultSet=prepare.executeQuery();
		List<User> users=new ArrayList<User>();
		 while(resultSet.next()) {
			 User user=new User();
			 int iduser=resultSet.getInt("iduser");
			 String username=resultSet.getString("username");
			 String useremail=resultSet.getString("useremail");
			 Long userphone=resultSet.getLong("userphone");
			 String usergender=resultSet.getString("usergender");
			 String useraddress=resultSet.getString("useraddress");
			 user.setIduser(iduser);
			 user.setUsername(username);
			 user.setUseremail(useremail);
			 user.setUserphone(userphone);
			 user.setUsergender(usergender);
			 user.setUseraddress(useraddress);
			 users.add(user);
			 		
		 }
		 return users;
		 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public void deleteuserDataDao(int id) {
		String delq="delete from user where iduser=?";
		try {
			
			PreparedStatement pt=con.prepareStatement(delq);
			pt.setInt(1, id);
			pt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public User getdatabyId(int id) {
		String fetch="Select * from user where iduser=?";
		try {
			PreparedStatement pre=con.prepareStatement(fetch);
			pre.setInt(1, id);
		ResultSet	resultSet=pre.executeQuery();
		if(resultSet.next()) {
			 User user=new User();
			 int iduser=resultSet.getInt("iduser");
			 String username=resultSet.getString("username");
			 String useremail=resultSet.getString("useremail");
			 Long userphone=resultSet.getLong("userphone");
			 String usergender=resultSet.getString("usergender");
			 String useraddress=resultSet.getString("useraddress");
			 user.setIduser(iduser);
			 user.setUsername(username);
			 user.setUseremail(useremail);
			 user.setUserphone(userphone);
			 user.setUsergender(usergender);
			 user.setUseraddress(useraddress);
			return user;
		}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public void update(User user) {
		String upd="Update user set username=?,useremail=?,userphone=?,usergender=?,useremail=? where iduser=?";
		try {
			PreparedStatement pr=con.prepareStatement(upd);
			pr.setString(1,user.getUsername());
			pr.setString(2,user.getUseremail());
			pr.setLong(3,user.getUserphone());
			pr.setString(4,user.getUsergender());
			pr.setString(5,user.getUseremail());
			pr.setInt(6,user.getIduser());
			pr.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}


}
