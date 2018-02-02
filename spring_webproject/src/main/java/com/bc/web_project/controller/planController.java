package com.bc.web_project.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.bc.web_project.dao.PlanDao;
import com.bc.web_project.vo.PlanDetailVo;
import com.bc.web_project.vo.PlanVo;




@RestController
@RequestMapping("/Schedule/*")
public class planController {
	
	@Inject
	private PlanDao planDao;
	
	
	@RequestMapping(value="make1.do", method=RequestMethod.GET)
	public ModelAndView make1() {
		ModelAndView model= new ModelAndView();
		
		return model;
	}
	@RequestMapping(value="make2.do", method=RequestMethod.GET)
	public ModelAndView make2() {
		ModelAndView model= new ModelAndView();
		
		return model;
	}
	@RequestMapping(value="make3.do", method=RequestMethod.GET)
	public ModelAndView make3(PlanDetailVo planDetailVo) {
		ModelAndView model= new ModelAndView();
		
		return model;
	}
	@RequestMapping("insert")
	public ModelAndView insertForm() {
		return new ModelAndView();
	}
	@RequestMapping(value="insert.do", method=RequestMethod.POST)
	public ModelAndView insert(PlanVo planVo, HttpSession session) {
		ModelAndView model=new ModelAndView();
		int insert=0;
		try {
			insert=planDao.insert(planVo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.setAttribute("insert",insert);	
		model.setViewName("redirect:detail/");
		return model;
	}
}
