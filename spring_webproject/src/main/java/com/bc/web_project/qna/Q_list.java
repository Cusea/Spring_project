package com.bc.web_project.qna;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller  //???
@RequestMapping("/QnA/*")  //QnA 안에 있는 모든 것을 받아온다?
public class Q_list {
	@RequestMapping(value="QnA.do", method=RequestMethod.GET)
	public String QnA() {
		
		return "QnA/QnA";
	}
}
