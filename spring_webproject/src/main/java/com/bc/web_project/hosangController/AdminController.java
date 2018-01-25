package com.bc.web_project.adminController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	@RequestMapping(value="main.do", method=RequestMethod.GET)
	public String main() {return "admin/main";}
}
