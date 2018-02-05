package com.bc.web_project.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bc.web_project.vo.CityVo;

	
@Repository
public class CityDaoImp {
	@Inject
	private SqlSession session;
	private String path="com.bitcamp.mapper.CityMapper";
	
	public List<CityVo> selectList(){
		return session.selectList(path+".selectList");
	}
}
