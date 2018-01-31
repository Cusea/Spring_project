package com.bc.web_project.dao;

import com.bc.web_project.dto.LoginDTO;
import com.bc.web_project.vo.UserVo;

public interface UserDao {
	public UserVo login(LoginDTO dto) throws Exception;
	public UserVo signup(UserVo userVo) throws Exception;
	
}
