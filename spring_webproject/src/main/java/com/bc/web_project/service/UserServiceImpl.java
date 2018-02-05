package com.bc.web_project.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bc.web_project.dao.UserDao;
import com.bc.web_project.dto.LoginDTO;
import com.bc.web_project.vo.PagingVo;
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

	@Override
	public UserVo selectId(String id) throws Exception {
		return dao.select(id);
	}

	@Override
	public Map<String,Object> selectList(int page) throws Exception {
		Map<String,Object> list = new HashMap<String,Object>();
		PagingVo pagingVo = new PagingVo();
		int total_row = dao.selectCount();
		pagingVo.setPage(page, total_row);
		List<UserVo> userList= dao.selectList(pagingVo);
		list.put("pagingVo", pagingVo);
		list.put("userList", userList);
		return list;
	}

	

}