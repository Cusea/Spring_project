package com.bc.web_project.dao;

import java.util.List;

import com.bc.web_project.vo.CategoryVo;

public interface CategoryDao {
	public List<CategoryVo> selectList();
	public List<String> selectMain();
	//public List<CategoryVo> selectMid();
	//public List<CategoryVo> selectSub();
}
