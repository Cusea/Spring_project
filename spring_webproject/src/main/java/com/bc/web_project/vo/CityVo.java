package com.bc.web_project.vo;

public class CityVo {
/*
 Name                                      Null?    Type
 ----------------------------------------- -------- ---------------
 NUM                                       NOT NULL NUMBER(8)
 AREA                                      NOT NULL VARCHAR2(100)
 IMAGEADDLIST                                       VARCHAR2(4000)
 */
	private int num;
	private String area;
	private String imageAddList;
	
	@Override
	public String toString() {
		return "{\"num\":" + num + ", \"area\":" + area + ", \"imageAddList\":" + imageAddList + "\"}";
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getImageAddList() {
		return imageAddList;
	}
	public void setImageAddList(String imageAddList) {
		this.imageAddList = imageAddList;
	}
	
	
}
