package com.bc.web_project.vo;

public class PlaceVo {
/*
  Name                                      Null?    Type
 ----------------------------------------- -------- ----------------
 NUM                                       NOT NULL NUMBER(8)			PK
 NAME_KO                                            VARCHAR2(300)
 NAME_EN                                            VARCHAR2(300)
 ----기본정보----
 SUMMARY                                   NOT NULL VARCHAR2(1200)
 ----부가정보----
 WAYTOGO                                   NOT NULL VARCHAR2(1200)
 TEL                                                VARCHAR2(50)
 OPEN_TIME                                 NOT NULL VARCHAR2(1200)
 ADDRESS                                   NOT NULL VARCHAR2(600)
 IMAGEADDLIST                              NOT NULL VARCHAR2(4000)
 HOMEPAGE                                           VARCHAR2(1000)
 -------------
 CATEGORY_NUM                              NOT NULL NUMBER(8)			FK
 CITY_NUM                                  NOT NULL NUMBER(8)			FK
 CLIPCOUNT                                          NUMBER(8) 
 */
	private int num;
	private String name_ko;
	private String name_en;
	private String summary;
	private String wayToGo;
	private String tel;
	private String open_time;
	private String address;
	private String imageAddList;
	private String homepage;
	private String category_num;
	private String city_num;
	private String clipCount;
	
	@Override
	public String toString() {
		return "{\"num\":" + num + ", \"name_ko\":" + name_ko + ", \"name_en\":" + name_en + ", \"summary\":" + summary
				+ ", \"wayToGo\":" + wayToGo + ", \"tel\":" + tel + ", \"open_time\":" + open_time + ", \"address\":"
				+ address + ", \"imageAddList\":" + imageAddList + ", \"homepage\":" + homepage + ", \"category_num\":"
				+ category_num + ", \"city_num\":" + city_num + ", \"clipCount\":" + clipCount + "\"}";
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName_ko() {
		return name_ko;
	}
	public void setName_ko(String name_ko) {
		this.name_ko = name_ko;
	}
	public String getName_en() {
		return name_en;
	}
	public void setName_en(String name_en) {
		this.name_en = name_en;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getWayToGo() {
		return wayToGo;
	}
	public void setWayToGo(String wayToGo) {
		this.wayToGo = wayToGo;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getOpen_time() {
		return open_time;
	}
	public void setOpen_time(String open_time) {
		this.open_time = open_time;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getImageAddList() {
		return imageAddList;
	}
	public void setImageAddList(String imageAddList) {
		this.imageAddList = imageAddList;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}
	public String getCategory_num() {
		return category_num;
	}
	public void setCategory_num(String category_num) {
		this.category_num = category_num;
	}
	public String getCity_num() {
		return city_num;
	}
	public void setCity_num(String city_num) {
		this.city_num = city_num;
	}
	public String getClipCount() {
		return clipCount;
	}
	public void setClipCount(String clipCount) {
		this.clipCount = clipCount;
	}
	
}
