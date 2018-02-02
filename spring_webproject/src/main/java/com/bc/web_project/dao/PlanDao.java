package com.bc.web_project.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bc.web_project.vo.PlanVo;
@Repository
public interface PlanDao {
	public List<PlanVo> planList() throws Exception; 
	public int insert(PlanVo planVo) throws Exception;
}
