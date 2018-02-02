package com.bc.web_project.vo;

public class PlanDetailVo {
	/*Name                                      Null?    Type
			----------------------------------------- -------- ----------------
			NUM                                       NOT NULL NUMBER(8)
			PLAN_NUM                                  NOT NULL NUMBER(8)
			DAY                                       NOT NULL NUMBER(4)
			DATA                                               VARCHAR2(4000)*/
	private int num;
	private int plan_num;
	private int day;
	private String data;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getPlan_num() {
		return plan_num;
	}
	public void setPlan_num(int plan_num) {
		this.plan_num = plan_num;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	@Override
	public String toString() {
		return "PlanDetailVo [num=" + num + ", plan_num=" + plan_num + ", day=" + day + ", data=" + data + "]";
	} 
	
	
	
	
}
