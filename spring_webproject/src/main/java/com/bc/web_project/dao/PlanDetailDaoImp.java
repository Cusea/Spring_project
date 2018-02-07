package com.bc.web_project.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.bc.web_project.vo.PlanDetailVo;


@Repository
@Service("PlanDetailDao")
public class PlanDetailDaoImp implements PlanDetailDao{
	@Inject
	private SqlSession sqlSession;
	private final String planMapper="com.bitcamp.mapper.planMapper";
	
	@Override
	public int insert(PlanDetailVo planDetailVo) {
		
		return sqlSession.insert(planMapper+".insert2",planDetailVo);
	}

	@Override
	public PlanDetailVo select(int num) {
		
		return sqlSession.selectOne(planMapper+".selectNum",num);
	}

	
	
	

}
