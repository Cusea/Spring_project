package com.bc.web_project.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.bc.web_project.vo.PlanVo;

@Repository
@Service("PlanDao")
public class PlanDaoImp implements PlanDao {
	@Inject
	private SqlSession sqlSession;
	private final String planMapper="com.bitcamp.mapper.planMapper";
	
	
	
	@Override
	public PlanVo select(int num) {
				return null;
	}

	@Override
	public int insert(PlanVo planVo) {
		
		return sqlSession.insert(planMapper+".insert",planVo);
	}

	@Override
	public int update(PlanVo planVo) {
		
		return 0;
	}
	
}
