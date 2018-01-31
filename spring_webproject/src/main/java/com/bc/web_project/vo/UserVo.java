package com.bc.web_project.vo;

public class UserVo {
/*	 Name					  Null?    Type
---------------------------------------------------------
	NUM						  NOT NULL NUMBER(8)
	ID						           VARCHAR2(320)
	PW					      NOT NULL VARCHAR2(40)
	NAME				      NOT NULL VARCHAR2(30)
	ADMIN           				   NUMBER(1)
	GENDER        				       VARCHAR2(20)
	MYPAGE        				       VARCHAR2(100)
	SIGNUPTIME  			  NOT NULL TIMESTAMP(6)				가입시간
	IMAGEADD          				   VARCHAR2(100)
	WITHDRAW         			       TIMESTAMP(6)				탈퇴시간
	LIKETIPLIST              		   VARCHAR2(4000)
*/
	
	private int num;
	private String id;
	private String pw;
	private String name;
	private int admin;
	private String gender;
	private String myPage;
	private String imageAdd;
	private String likeTipList;
	private String signupTime;
	private String withdraw;
	public int getNum() {return num;}
	public void setNum(int num) {this.num = num;}
	
	public String getId() {return id;}
	public void setId(String id) {this.id = id;}
	
	public String getPw() {return pw;}
	public void setPw(String pw) {this.pw = pw;}
	
	public String getName() {return name;}
	public void setName(String name) {this.name = name;}
	
	public int getAdmin() {return admin;}
	public void setAdmin(int admin) {this.admin = admin;}
	
	public String getGender() {return gender;}
	public void setGender(String gender) {this.gender = gender;}
	
	public String getMyPage() {return myPage;}
	public void setMyPage(String myPage) {this.myPage = myPage;}
	
	public String getImageAdd() {return imageAdd;}
	public void setImageAdd(String imageAdd) {this.imageAdd = imageAdd;}
	
	public String getLikeTipList() {return likeTipList;}
	public void setLikeTipList(String likeTipList) {this.likeTipList = likeTipList;}
	
	public String getSignupTime() {return signupTime;}
	public void setSignupTime(String signupTime) {this.signupTime = signupTime;}
	
	public String getWithdraw() {return withdraw;}
	public void setWithdraw(String withdraw) {this.withdraw = withdraw;}
	@Override
	public String toString() {
		return "{\"num\":" + num + ", \"id\":\"" + id + "\", \"pw\":\"" + pw + "\", \"name\":\"" + name
				+ "\", \"admin\":" + admin + ", \"gender\":\"" + gender + "\", \"myPage\":\"" + myPage
				+ "\", \"imageAdd\":\"" + imageAdd + "\", \"likeTipList\":\"" + likeTipList + "\", \"signupTime\":\""
				+ signupTime + "\", \"withdraw\":\"" + withdraw + "\"}";
	}
	
	
}
