package com.bc.web_project.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bc.web_project.vo.CategoryVo;

@Repository
public class CategoryDaoImp implements CategoryDao{

	@Inject
	private SqlSession session;
	private String path="com.bitcamp.mapper.CategoryMapper";
	
	@Override
	public List<CategoryVo> selectList() {
		return session.selectList(path+".selectList");
	}

	@Override
	public List<String> selectMain() {
		return session.selectList(path+".getMainName");
	}

}
