package com.bc.web_project.dao;

import java.util.List;

import com.bc.web_project.vo.AnswerVO;
import com.bc.web_project.vo.QuestionVO;

public interface QnADAO {
	public List<QuestionVO> QnAselect();
	public QuestionVO detail(int num);
	public AnswerVO answerSelect(int num);
	public int insertQuestion(QuestionVO questionVO);
	
}
