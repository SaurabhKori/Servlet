package com.jsp.form.userdaoservice;

import com.jsp.form.dto.User;
import com.jsp.form.userdao.UserDao;

public class UserDaoService {
	UserDao userdao=new UserDao();
	public User insertUserDaoService(User user) {
		 
		 userdao.insertUserDao(user);
		 return user;
	}
	public void deleteuserdataService(int n) {
		
		userdao.deleteuserDataDao(n);
	}
	public User getdatabyIdService(int id) {

		return userdao.getdatabyId(id);

	}
	
}
