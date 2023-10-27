package com.jsp.form.dto;

public class User {
	private int iduser;
	private String username;
	private String useremail;
	private long userphone;
	private String usergender;
	private String useraddress;
	
	public User() {
		super();
	}
	

	public User(int iduser, String username, String useremail, long userphone, String usergender, String useraddress) {
		super();
		this.iduser = iduser;
		this.username = username;
		this.useremail = useremail;
		this.userphone = userphone;
		this.usergender = usergender;
		this.useraddress = useraddress;
	}


	public User(String username, String useremail, long userphone, String usergender, String useraddress) {
		super();
		this.username = username;
		this.useremail = useremail;
		this.userphone = userphone;
		this.usergender = usergender;
		this.useraddress = useraddress;
	}

	public int getIduser() {
		return iduser;
	}

	public void setIduser(int iduser) {
		this.iduser = iduser;
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

	public long getUserphone() {
		return userphone;
	}

	public void setUserphone(long userphone) {
		this.userphone = userphone;
	}

	public String getUsergender() {
		return usergender;
	}

	public void setUsergender(String usergender) {
		this.usergender = usergender;
	}

	public String getUseraddress() {
		return useraddress;
	}

	public void setUseraddress(String useraddress) {
		this.useraddress = useraddress;
	}
	
	

}
