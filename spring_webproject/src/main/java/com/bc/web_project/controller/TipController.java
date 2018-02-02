package com.bc.web_project.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/KBJ/*")
public class TipController {
	@RequestMapping(value="TipofTravel.do", method=RequestMethod.GET)
	public ModelAndView TipofTravel() {
		ModelAndView model = new ModelAndView();
		model.setViewName("/KBJ/TipofTravel");
		
		return model;
	}
	@RequestMapping(value="tip2.do", method=RequestMethod.GET)
	public ModelAndView tip2() {
		ModelAndView model = new ModelAndView();
		model.setViewName("/KBJ/tip2");
		
		return model;	
		
	}
	@RequestMapping(value="tipmain.do", method=RequestMethod.GET)
	public ModelAndView testtip() {
		ModelAndView model = new ModelAndView();
		model.setViewName("/KBJ/tipmain");
		
		return model;
	}
	
}
