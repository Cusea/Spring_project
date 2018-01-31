package com.bc.web_project.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bc.web_project.dao.UserDao;
import com.bc.web_project.dto.LoginDTO;
import com.bc.web_project.vo.UserVo;

@Service
public class UserServiceImpl implements UserService{

	@Inject
	private UserDao dao;
	
	@Override
	public UserVo login(LoginDTO dto) throws Exception {
		return dao.login(dto);
	}

	@Override
	public UserVo signup(UserVo userVo) throws Exception {
		return dao.signup(userVo);
	}

}