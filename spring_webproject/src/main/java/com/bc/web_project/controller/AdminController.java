package com.bc.web_project.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.bc.web_project.service.ServiceCenterService;
import com.bc.web_project.vo.ContactusVo;

@RestController
@RequestMapping("/admin/*")
public class AdminController {
	
	@Inject
	private ServiceCenterService service;
	
	@RequestMapping(value="main", method=RequestMethod.GET)
	public ModelAndView main() {
		ModelAndView model = new ModelAndView();
		
		model.setViewName("admin/main");
		return model;
	}
	
	@RequestMapping(value="boards", method=RequestMethod.GET)
	public ModelAndView board() {
		ModelAndView model = new ModelAndView();
		model.setViewName("admin/boards");
		return model;
	}
	
	@RequestMapping(value="users", method=RequestMethod.GET)
	public ModelAndView users() {
		ModelAndView model = new ModelAndView();
		model.setViewName("admin/users");
		return model;
	}
	
	@RequestMapping(value="spotupdate", method=RequestMethod.GET)
	public ModelAndView spotupdate() {
		ModelAndView model = new ModelAndView();
		model.setViewName("admin/spotupdate");
		return model;
	}
	
	@RequestMapping(value="pp", method=RequestMethod.GET)
	public ModelAndView pp() {
		ModelAndView model = new ModelAndView();
		model.setViewName("admin/pp");
		return model;
	}
	
	@RequestMapping(value="contactUsList", method=RequestMethod.POST)
	public List<ContactusVo> contactUsList() throws Exception{
		return service.readCuList();
	}
	
}
