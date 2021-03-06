package com.bc.web_project.vo;

public class PlanVo {
	/*Name                                      Null?    Type
			----------------------------------------- -------- ---------------
			NUM                                       NOT NULL NUMBER(8)
			USERS_NUM                                 NOT NULL NUMBER(8)
			NAME                                      NOT NULL VARCHAR2(300)
			PLANDAY                                   NOT NULL NUMBER(8)
			THEME                                              NUMBER(1)
			ISFINISH                                           NUMBER(1)
			ISOPEN                                             NUMBER(1)*/
	
	private int num;
	private int users_num;
	private String name;
	private int planday;
	private int theme;
	private int Isfinish;
	private int IsOpen;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPlanday() {
		return planday;
	}
	public void setPlanday(int planday) {
		this.planday = planday;
	}
	public int getTheme() {
		return theme;
	}
	public void setTheme(int theme) {
		this.theme = theme;
	}
	public int getIsfinish() {
		return Isfinish;
	}
	public void setIsfinish(int isfinish) {
		Isfinish = isfinish;
	}
	public int getIsOpen() {
		return IsOpen;
	}
	public void setIsOpen(int isOpen) {
		IsOpen = isOpen;
	}
	public int getUsers_num() {
		return users_num;
	}
	public void setUsers_num(int users_num) {
		this.users_num = users_num;
	}
	@Override
	public String toString() {
		return "PlanVo [num=" + num + ", users_num=" + users_num + ", name=" + name + ", planday=" + planday
				+ ", theme=" + theme + ", Isfinish=" + Isfinish + ", IsOpen=" + IsOpen + "]";
	}
	
	
	
}
