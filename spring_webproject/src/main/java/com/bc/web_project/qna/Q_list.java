package com.bc.web_project.qna;

import java.util.List;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

//do 없어도 되고

@RestController  //???
@RequestMapping("/QnA/*")  //QnA 안에 있는 모든 것을 받아온다?
public class Q_list {
	
	@Inject
	QnADAO QnADao;
	QuestionVO questionVo;
	
	
	//main 질문리스트
	/*@RequestMapping(value="QnA", method=RequestMethod.GET)
	public ModelAndView QnA() {
		ModelAndView model = new ModelAndView();
		List<QuestionVO> questionVo = QnADao.QnAselect();
		System.out.println("qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq");
		model.addObject("questionVo", questionVo);
		model.addObject("questionVo", questionVo);
		model.setViewName("QnA/QnA");
		
		System.out.println("qqqqqqqqqqqqqqqqqqqqqqqqqqqqqq"+questionVo);
		
		return model;
	}*/
	
	
	//출력 TEST
	@RequestMapping(value="QnA", method=RequestMethod.GET)
	public ModelAndView QnA() {
		ModelAndView model = new ModelAndView();
		
		//questionVo가 안받아 지는듯? 이거쓰면 오류남..
		List<QuestionVO> questionVo = QnADao.QnAselect();
		model.addObject("questionVo", questionVo);  
		
		System.out.println("qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq");
		model.setViewName("QnA/QnA");
		
		return model;
	}
	
	//게시물 상세정보
	/*@RequestMapping(value="DetailQnA", method=RequestMethod.GET)
	public ModelAndView DetailQnA() {
		ModelAndView model = new ModelAndView();
		
		model.setViewName("QnA/DetailQnA");
		
		return model;
	}*/
	
	//질문하기 modal로 글쓰면 게시판 생기게
/*	@RequestMapping(value="QnA", method=RequestMethod.POST)
	public ModelAndView InsertQnA() {
		ModelAndView model = new ModelAndView();
		
		model.setViewName("QnA/QnA");
		
		return model;
		
	}*/
	
}




















