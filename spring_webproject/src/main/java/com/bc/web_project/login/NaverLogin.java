package com.bc.web_project.login;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


@RestController
@RequestMapping("/layout/*")
public class NaverLogin {
	
	/*@RequestMapping("naverCallback")
	public ModelAndView main() {
		ModelAndView model = new ModelAndView();
		
		model.setViewName("layout/naverCallback");
		return model;
	}*/
	
}
