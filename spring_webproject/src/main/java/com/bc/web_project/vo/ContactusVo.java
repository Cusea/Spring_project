package com.bc.web_project.vo;

public class ContactusVo {
	/*
	 * 	NUM                        NOT NULL NUMBER(8)
		EMAIL                      NOT NULL VARCHAR2(320)
		TEXT                       NOT NULL VARCHAR2(4000)
		INTIME                     NOT NULL TIMESTAMP(6)
		ANSWER                      VARCHAR2(4000)
		ISANSWER                   NUMBER(1)
	 */
	private int num;
	private String mail;
	private String text;
	private String intime;
	private String answer;
	private int isanswer;
	
	public int getNum() {return num;}
	public void setNum(int num) {this.num = num;}
	
	public String getMail() {return mail;}
	public void setMail(String mail) {this.mail = mail;}
	
	public String getText() {return text;}
	public void setText(String text) {this.text = text;}
	
	public String getIntime() {return intime;}
	public void setIntime(String intime) {this.intime = intime;}
	
	public String getAnswer() {return answer;}
	public void setAnswer(String answer) {this.answer = answer;}
	
	public int getIsanswer() {return isanswer;}
	public void setIsanswer(int isanswer) {this.isanswer = isanswer;}
	
	@Override
	public String toString() {
		return "{\"num\":" + num + ", \"mail\":\"" + mail + "\", \"text\":\"" + text + "\", \"intime\":\""
				+ intime + "\", \"answer\":\"" + answer + "\", \"isanswer\":" + isanswer + "}";
	}
}
