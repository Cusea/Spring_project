package com.bc.web_project.controller;

import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.bc.web_project.service.PlanService;
import com.bc.web_project.vo.PlanDetailVo;
import com.bc.web_project.vo.PlanVo;




@RestController
@RequestMapping("/Schedule/*")
public class planController {
	
	@Inject
	private PlanService planService;
	
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
	public ModelAndView insertForm(){	
	return new ModelAndView();
	}
	
	@RequestMapping(value="insert.do",method=RequestMethod.POST)
	public ModelAndView insert(PlanVo planVo) throws Exception {
		ModelAndView model= new ModelAndView();
		//System.out.println(planVo);
		boolean insert=false;
		try {
			insert=planService.regist(planVo);
		} catch (Exception e) {e.printStackTrace();}
		//System.out.println(insert+"11111111111");
		model.addObject("insert",insert);
		if(insert) {
			model.setViewName("Schedule/make2");
		}else {
			model.setViewName("Schedule/make1");
		}
		return model;
	}
	/*@RequestMapping(value="make1")
	public ModelAndView list(int num) throws Exception{
		ModelAndView model = new ModelAndView();
		
		model.setViewName("Schedule/make3");
		return model;
	}*/
}
