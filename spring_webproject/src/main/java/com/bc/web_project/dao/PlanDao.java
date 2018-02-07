package com.bc.web_project.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bc.web_project.vo.PlanVo;

@Repository
public interface PlanDao {
	//public PlanVo select(String id,String pwd); 
	public PlanVo select(int num);
	public int insert(PlanVo planVo);
	//public int delete(int num) throws Exception; //admin=3 으로 update 하면 탈퇴
	int update(PlanVo planVo);
	
}
