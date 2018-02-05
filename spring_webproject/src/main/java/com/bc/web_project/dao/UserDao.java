package com.bc.web_project.dao;

import java.util.List;

import com.bc.web_project.dto.LoginDTO;
import com.bc.web_project.vo.PagingVo;
import com.bc.web_project.vo.UserVo;

public interface UserDao {
	public UserVo login(LoginDTO dto) throws Exception;
	public UserVo signup(UserVo userVo) throws Exception;
	public UserVo select(String id);						//id 중복체크
	public List<UserVo> selectList(PagingVo pagingVo) throws Exception;
	public int selectCount() throws Exception;
}
