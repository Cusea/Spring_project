package com.bc.web_project.dto;

public class LoginDTO {
	private String id;
	private String pw;
	private boolean userCookie;
	
	public String getId() {return id;}
	public void setId(String id) {this.id = id;}
	
	public String getPw() {return pw;}
	public void setPw(String pw) {this.pw = pw;}
	
	public boolean isUserCookie() {return userCookie;}
	public void setUserCookie(boolean userCookie) {this.userCookie = userCookie;}
	
	@Override
	public String toString() {
		return "LoginDTO [id=" + id + ", pw=" + pw + ", userCookie=" + userCookie + "]";
	}
	
}
