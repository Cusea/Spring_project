package com.bc.web_project.vo;

public class QuestionVO {
	/*
	 * SQL> desc question
	 Name                                      Null?    Type
	 ----------------------------------------- -------- ----------------------------
	 NUM                                       NOT NULL NUMBER(8)
	 USERS_NUM                                 NOT NULL NUMBER(8)
	 TAG_NAME                                           VARCHAR2(50)
	 TEXT                                      NOT NULL VARCHAR2(4000)
	 TITLE                                     NOT NULL VARCHAR2(300)
	 INDATE                                    NOT NULL TIMESTAMP(6)
	 */
	
	private int num;
	private int users_num;
	private String tag_name;
	private String text;
	private String title;
	private String indate;
	private String user_name;
	private String user_imageadd;
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getUsers_num() {
		return users_num;
	}
	public void setUsers_num(int users_num) {
		this.users_num = users_num;
	}
	
	public String getTag_name() {
		return tag_name;
	}
	public void setTag_name(String tag_name) {
		this.tag_name = tag_name;
	}
	
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getIndate() {
		return indate;
	}
	public void setIndate(String indate) {
		this.indate = indate;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_imageadd() {
		return user_imageadd;
	}
	public void setUser_imageadd(String user_imageadd) {
		this.user_imageadd = user_imageadd;
	}
	@Override
	public String toString() {
		return "{ \"num\":" + num + ", \"users_num\":" + users_num + ", \"tag_name\":\"" + tag_name + "\", \"text\":\"" + text
				+ "\", \"title\":\"" + title + "\", \"indate\":\"" + indate + "\", \"user_name\":\"" + user_name + "\""
				+ ", \"user_imageadd\":\"" + user_imageadd + "\" }";
	}
	
}
