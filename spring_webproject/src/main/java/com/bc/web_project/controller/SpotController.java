package com.bc.web_project.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.bc.web_project.service.SpotService;

@RestController
@RequestMapping("/travel/*")
public class SpotController {
	
	@Inject
	private SpotService service;
	
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
		model.addObject("city_info",service.loadCityInfo(value));
		model.addObject("spot_list",service.loadSpotList(value));
		model.addObject("category", service.loadCategory());
		return model;
	}
	
	@RequestMapping(value="place/{value}",method=RequestMethod.GET)
	public ModelAndView spot(@PathVariable int value) {
		ModelAndView model= new ModelAndView();
		model.setViewName("travel/spot");
		List<Object> list=new ArrayList<>();
		list=service.loadSpot(value);
		model.addObject("placeVo",list.get(0));
		return model;
	}
}
