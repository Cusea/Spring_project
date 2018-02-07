package com.bc.web_project.dao;

import java.util.List;

import com.bc.web_project.vo.CityVo;

public interface CityDao {
	public CityVo selectOne(int num);
	public List<CityVo> selectList();
}
