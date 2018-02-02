package com.bc.web_project.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bc.web_project.vo.PlaceVo;

@Repository
public class PlaceDaoImp implements PlaceDao{

	@Inject
	private SqlSession session;
	private String path="com.bitcamp.mapper.PlaceMapper";
	@Override
	public List<PlaceVo> selectList() throws Exception {		
		return session.selectList(path+".selectTest");
	}

}
