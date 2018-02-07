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
	}
	
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
		System.out.println(questionVO+"QnADAOImpQnADAOImpQnADAOImpQnADAOImpQnADAOImpQnADAOImpQnADAOImpQnADAOImpQnADAOImp");
		return sqlSession.insert(qnaMapper+".insertQuestion", questionVO);
	}

	@Override
	public int deleteQuestion(int num) {
		
		return sqlSession.delete(qnaMapper+".deleteQuestion", num);
	}

}

















