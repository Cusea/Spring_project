package com.bc.web_project.vo;

public class CategoryVo {
/*
  Name                                      Null?    Type
 ----------------------------------------- -------- ---------------
 NUM                                       NOT NULL NUMBER(8)
 MAIN_CATEGORY                             NOT NULL VARCHAR2(60)
 MID_CATEGORY                                       VARCHAR2(60)
 SUB_CATEGORY                              NOT NULL VARCHAR2(60)
 */
	private int num;
	private String main_category;
	private String mid_category;
	private String sub_category;
	
	public String toString2() {
		return "{\"name\":" + sub_category + ",\"value\":" + num + "\"}";
	}
	@Override
	public String toString() {
		return "{\"num\":" + num + ", \"main_category\":" + main_category + ", \"mid_category\":" + mid_category
				+ ", \"sub_category\":" + sub_category + "\"}";
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getMain_category() {
		return main_category;
	}
	public void setMain_category(String main_category) {
		this.main_category = main_category;
	}
	public String getMid_category() {
		return mid_category;
	}
	public void setMid_category(String mid_category) {
		this.mid_category = mid_category;
	}
	public String getSub_category() {
		return sub_category;
	}
	public void setSub_category(String sub_category) {
		this.sub_category = sub_category;
	}
	
}
