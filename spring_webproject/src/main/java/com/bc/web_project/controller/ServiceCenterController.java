package com.bc.web_project.controller;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.bc.web_project.service.ServiceCenterService;
import com.bc.web_project.vo.ContactusVo;

@RestController
@RequestMapping("/ServiceCenter/*")
public class ServiceCenterController {
	
	@Inject
	private ServiceCenterService service;
	
	@RequestMapping(value="ContactUs", method=RequestMethod.GET)
	public ModelAndView ContactUs() {
		ModelAndView model = new ModelAndView();
		
		model.setViewName("ServiceCenter/ContactUs");
		return model;
	}
	
	@RequestMapping(value="terms", method=RequestMethod.GET)
	public ModelAndView terms() {
		ModelAndView model = new ModelAndView();
		model.setViewName("ServiceCenter/terms");
		return model;
	}
	
	@RequestMapping(value="intro", method=RequestMethod.GET)
	public ModelAndView intro() {
		ModelAndView model = new ModelAndView();
		model.setViewName("ServiceCenter/intro");
		return model;
	}
	
	@RequestMapping(value="faq", method=RequestMethod.GET)
	public ModelAndView faq() {
		ModelAndView model = new ModelAndView();
		model.setViewName("ServiceCenter/faq");
		return model;
	}
	
	@RequestMapping(value="pp", method=RequestMethod.GET)
	public ModelAndView pp() {
		ModelAndView model = new ModelAndView();
		model.setViewName("ServiceCenter/pp");
		return model;
	}
	
	@RequestMapping(value="SendContactUs", method=RequestMethod.POST)
	public String SendContactUs(@RequestBody ContactusVo contactusVo) {
		System.out.println(contactusVo);
		boolean regist = false;
		try {
			regist = service.regist(contactusVo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "{\"regist\":"+regist+"}";
	}
}
