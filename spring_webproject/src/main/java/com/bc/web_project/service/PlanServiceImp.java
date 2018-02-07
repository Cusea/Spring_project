package com.bc.web_project.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bc.web_project.dao.PlanDao;
import com.bc.web_project.vo.PlanVo;
@Service
public class PlanServiceImp implements PlanService{
	@Inject
	private PlanDao planDao;
	
	
	
	@Override
	public boolean regist(PlanVo planVo) throws Exception {
		boolean regist = false;
		int insert = planDao.insert(planVo);
		if(insert>0) {
			regist = true;
		}
		return regist;
	}
	
}
