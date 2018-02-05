package com.bc.web_project.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/travel/*")
public class SpotController {
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView japan() {
		ModelAndView model= new ModelAndView();
		model.setViewName("travel/japan");
		return model;
	}
	
	@RequestMapping(value="city/{value}",method=RequestMethod.GET)
	public ModelAndView city(@PathVariable int value) {
		ModelAndView model= new ModelAndView();
		model.setViewName("travel/city");
		return model;
	}
	
	@RequestMapping(value="place/{value}",method=RequestMethod.GET)
	public ModelAndView spot(@PathVariable int value) {
		ModelAndView model= new ModelAndView();
		model.setViewName("travel/spot");
		return model;
	}
}
