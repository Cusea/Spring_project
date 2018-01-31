package com.bc.web_project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/Schedule/*")
public class planController {
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
	public ModelAndView make3() {
		ModelAndView model= new ModelAndView();
		
		return model;
	}
}
