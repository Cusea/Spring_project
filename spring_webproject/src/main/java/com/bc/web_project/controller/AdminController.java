package com.bc.web_project.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.bc.web_project.service.ServiceCenterService;
import com.bc.web_project.service.UserService;
import com.bc.web_project.vo.ContactusVo;

@RestController
@RequestMapping("/admin/*")
public class AdminController {
	
	@Inject
	private ServiceCenterService SCservice;
	
	@Inject
	private UserService userService;
	
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
	
	@RequestMapping(value="users/{page}", method=RequestMethod.GET)
	public ModelAndView users(@PathVariable("page") int page) throws Exception {
		ModelAndView model = new ModelAndView();
		Map map = userService.selectList(page);
		model.addObject("pagingVo", map.get("pagingVo"));
		model.addObject("userList", map.get("userList"));
		model.setViewName("admin/users");
		return model;
	}
	
	@RequestMapping(value="spotupdate", method=RequestMethod.GET)
	public ModelAndView spotupdate() {
		ModelAndView model = new ModelAndView();
		model.setViewName("admin/spotupdate");
		return model;
	}
	
	@RequestMapping(value="pp/{page}", method=RequestMethod.GET)
	public ModelAndView pp(@PathVariable("page") int page) throws Exception {
		ModelAndView model = new ModelAndView();
		Map map =  SCservice.readCuList(page); 
		model.addObject("pagingVo", map.get("pagingVo"));
		model.addObject("cuList", map.get("cuList"));
		model.setViewName("admin/pp");
		return model;
	}
	
	@RequestMapping(value="pp/update", method=RequestMethod.POST)
	public ModelAndView contactusUpdate(ContactusVo contactusVo){
		//System.out.println(contactusVo);
		ModelAndView model= new ModelAndView();
		boolean update =false;
		try {
			update=SCservice.modify(contactusVo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addObject("update", update);
		model.setViewName("redirect: ../../admin/pp/1");
		return model;
	}
}
