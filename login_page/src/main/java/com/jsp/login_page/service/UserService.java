package com.jsp.login_page.service;

import java.util.List;

import com.jsp.login_page.dao.UserDao;
import com.jsp.login_page.dto.User;

public class UserService {
	UserDao ud= new UserDao();
	public User setdetails(User u) {
		return ud.setdetail(u);
	}
    public List<User> fetchAllSe(){
    	return ud.fetchAllDetail();
    }
    public User getbyemailservie(String email) {
    	return ud.getbyemail(email);
    }
}
