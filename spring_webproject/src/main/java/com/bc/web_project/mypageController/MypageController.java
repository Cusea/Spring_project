package com.bc.web_project.mypageController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/LSH/*")
public class MypageController {
	@RequestMapping(value="01cl.do", method=RequestMethod.GET)
	public String main() {return "LSH/01cl";}
}
