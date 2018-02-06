package com.bc.web_project.service;

import java.util.Date;
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

	@Override
	public String searchPw(UserVo userVo) throws Exception {
		UserVo user = dao.searchPw(userVo);
		String pw=user.getPw();
		int pw_len = pw.length();
		String pw_front;
		String pw_end;
		if(pw_len<5) {
			
		}else {
			pw_front = pw.substring(0, 2);
			pw_end = pw.substring(pw_len-2, pw_len);
			String star ="";
			for(int i=2; i<pw_len-2; i++) {
				star +="*";
			}
			pw = pw_front+star+pw_end;			
		}
		//System.out.println(pw);
		return pw;
	}

	@Override
	public void keepLogin(String id, String sessionId, Date next) throws Exception {
		dao.keepLogin(id, sessionId, next);
	}

	@Override
	public UserVo checkLoginBefore(String value) {
		return dao.checkUserWithSessionKey(value);
	}

	

}