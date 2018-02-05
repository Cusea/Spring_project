package com.bc.web_project.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.bc.web_project.vo.AnswerVO;
import com.bc.web_project.vo.QuestionVO;

@Repository
@Service("QnADAO")
public class QnADAOImp implements QnADAO{
	
	@Inject
	private SqlSession sqlSession;
	private final String qnaMapper = "com.bitcamp.mapper.qnaMapper";
	
	
	@Override
	public List<QuestionVO> QnAselect() {
		
		return sqlSession.selectList(qnaMapper+".QnAselect");
		//com.bitcamp.mapper.usersMapper 안에 있는 id=select 인것의 쿼리문
	}
	
	//List말고 Vo는 하나니까 selectOne
	@Override
	public QuestionVO detail(int num) {
		
		return sqlSession.selectOne(qnaMapper+".detail", num);
	}

	@Override
	public AnswerVO answerSelect(int num) {
		
		return sqlSession.selectOne(qnaMapper+".answerSelect", num);
	}

	@Override
	public int insertQuestion(QuestionVO questionVO) {
		
		return sqlSession.selectOne(qnaMapper+".insertQuestion", questionVO);
	}
	
	
/*	@Override
	public QuestionVO select() {
		return sqlSession.selectList(usersMapper+".select");
	}*/
	
	/*@Override
	public List<QuestionVO> QnAdetail(int num) {
		
		return sqlSession.selectList(qnaMapper+".detail");
	}*/

}

















