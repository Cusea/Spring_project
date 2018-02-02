package com.bc.web_project.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.bc.web_project.dao.QnADAO;
import com.bc.web_project.vo.QuestionVO;



//do 없어도 되고

@RestController  //???
@RequestMapping("/QnA/*")  //QnA 안에 있는 모든 것을 받아온다?
public class Q_list {
	
	@Inject
	QnADAO QnADao;
	
	
	//main 질문리스트 //USERS TABLE join
	//이건왜 do 안써도 되남?
	@RequestMapping(value="QnA", method=RequestMethod.GET)
	public ModelAndView QnA() {
		ModelAndView model = new ModelAndView();
		
		List<QuestionVO> questionList = QnADao.QnAselect();
		
		model.addObject("questionList", questionList);  
		model.setViewName("QnA/QnA");
		
		return model;
	}
	
	@RequestMapping(value="DetailQnA/{num}", method=RequestMethod.GET)
	public ModelAndView DetailQnA(@PathVariable int num) {  //@RequestParam(defaultValue="0")?
		System.out.println(num);
		ModelAndView model = new ModelAndView();
		
		QuestionVO questionVO = QnADao.detail(num);
		
		model.addObject("questionVO", questionVO);  
		model.setViewName("QnA/DetailQnA");
		
		return model;
	}
	
	//게시물 상세정보 (게시판의 num을 받아와서 게시판을 보여줘야 한다.)
	/*@RequestMapping(value="DetailQnA", method=RequestMethod.GET)
	public ModelAndView DetailQnA(@PathVariable int num) {
		ModelAndView model = new ModelAndView();
		QuestionVO questionVO = QnADao.detail(num);
		
		model.addObject("questionVo", questionVO);
		model.setViewName("QnA/DetailQnA");
		
		return model;
	}*/
	
	//답변 카운트
	/*@RequestMapping(value="AnswerCount/{num}", method=RequestMethod.GET)
	public ModelAndView AnswerCount(@PathVariable int num) {
		ModelAndView model = new ModelAndView();
		AnswerVO answerVO = QnADao.answerCount(num);
		
		model.addObject("answerVO", answerVO);
		model.setViewName("QnA/QnA");
		
		return model;
	}
	*/
	
	//질문하기 modal로 글쓰면 게시판 생기면서 리스트 출력
/*	@RequestMapping(value="QnA", method=RequestMethod.POST)
	public ModelAndView InsertQnA() {
		ModelAndView model = new ModelAndView();
		
		model.setViewName("QnA/QnA");
		
		return model;
		
	}*/
	
}




















