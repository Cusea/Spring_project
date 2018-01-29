package com.bc.web_project.mypageController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/LSH/*")
public class MypageController {
	@RequestMapping(value="01cl.do", method=RequestMethod.GET)
	public String main() {return "LSH/01cl";}
	@RequestMapping(value="02pl.do", method=RequestMethod.GET)
	public String pl() {return "LSH/02pl";}
	@RequestMapping(value="03re.do", method=RequestMethod.GET)
	public String re() {return "LSH/03re";}
	@RequestMapping(value="04tip.do", method=RequestMethod.GET)
	public String tip() {return "LSH/04tip";}
	@RequestMapping(value="05qna.do", method=RequestMethod.GET)
	public String qna() {return "LSH/05qna";}
	@RequestMapping(value="set.do", method=RequestMethod.GET)
	public String set() {return "LSH/set";}
}
