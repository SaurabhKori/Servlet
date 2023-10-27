package com.jsp.login_page.dto;

public class User {
	int id;
	String username;
	String useremail;
	String userpass;
	String usergender;
	long userphone;
	public User(int id, String username, String useremail, String userpass, String usergender, long userphone) {
		
		this.id = id;
		this.username = username;
		this.useremail = useremail;
		this.userpass = userpass;
		this.usergender = usergender;
		this.userphone = userphone;
	}
	public User() {
		super();
	}
	public User(String username, String useremail, String userpass, String usergender, long userphone) {
		super();
		this.username = username;
		this.useremail = useremail;
		this.userpass = userpass;
		this.usergender = usergender;
		this.userphone = userphone;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getUserpass() {
		return userpass;
	}
	public void setUserpass(String userpass) {
		this.userpass = userpass;
	}
	public String getUsergender() {
		return usergender;
	}
	public void setUsergender(String usergender) {
		this.usergender = usergender;
	}
	public long getUserphone() {
		return userphone;
	}
	public void setUserphone(long userphone) {
		this.userphone = userphone;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", useremail=" + useremail + ", userpass=" + userpass
				+ ", usergender=" + usergender + ", userphone=" + userphone + "]";
	}
	
	

}
