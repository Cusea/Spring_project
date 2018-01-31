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

}
