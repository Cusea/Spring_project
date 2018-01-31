package com.bc.web_project.service;

import com.bc.web_project.dto.LoginDTO;
import com.bc.web_project.vo.UserVo;

public interface UserService {
	public UserVo login(LoginDTO dto) throws Exception;
}
