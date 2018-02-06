package com.bc.web_project.dao;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bc.web_project.dto.LoginDTO;
import com.bc.web_project.vo.PagingVo;
import com.bc.web_project.vo.UserVo;

@Repository
public class UserDaoImpl implements UserDao{
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "com.bitcamp.mapper.usersMapper";
	
	@Override
	public UserVo login(LoginDTO dto) throws Exception {
		return session.selectOne(namespace+".login", dto);
	}

	@Override
	public UserVo signup(UserVo userVo) throws Exception {
		//System.out.println(userVo);
		int insert = session.insert(namespace+".signup", userVo);
		if (insert>0) {
			LoginDTO dto = new LoginDTO();
			dto.setId(userVo.getId());
			dto.setPw(userVo.getPw());
			return login(dto);
		}else {
			return userVo;
		}
	}

	@Override
	public UserVo select(String id) {	// id 체크
		return session.selectOne(namespace+".selectId",id);
	}

	@Override
	public List<UserVo> selectList(PagingVo pagingVo) throws Exception {
		return session.selectList(namespace+".selectList", pagingVo);
	}

	@Override
	public int selectCount() throws Exception {
		return session.selectOne(namespace+".selectCount");
	}

	@Override
	public UserVo searchPw(UserVo userVo) throws Exception {
		return session.selectOne(namespace+".searchPw", userVo);
	}

	@Override
	public void keepLogin(String id, String sessionId, Date next) {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("id", id);
		paramMap.put("sessionId", sessionId);
		paramMap.put("next", next);
		session.update(namespace+".keepLogin", paramMap);
	}

	@Override
	public UserVo checkUserWithSessionKey(String value) {
		return session.selectOne(namespace+".checkUserWithSessionKey", value);
	}

}
