package com.bc.web_project.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bc.web_project.vo.PlanDetailVo;

@Repository
public interface PlanDetailDao {
	/*public List<>*/
	
	public int insert(PlanDetailVo planDetailVo);
	
	public PlanDetailVo select(int num);
}
