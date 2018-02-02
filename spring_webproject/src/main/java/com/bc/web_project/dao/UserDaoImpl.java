package com.bc.web_project.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bc.web_project.dto.LoginDTO;
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

}
