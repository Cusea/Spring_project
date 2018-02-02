package com.bc.web_project.dao;

import java.util.List;

import com.bc.web_project.vo.AnswerVO;
import com.bc.web_project.vo.QuestionVO;

public interface QnADAO {
	//public QuestionVO select();
	public List<QuestionVO> QnAselect();
	/*public List<QuestionVO> QnAdetail(int num);*/
	public QuestionVO detail(int num);
	public AnswerVO answerCount(int num);
}
