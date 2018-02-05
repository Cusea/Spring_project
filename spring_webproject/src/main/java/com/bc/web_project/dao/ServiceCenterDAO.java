package com.bc.web_project.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import com.bc.web_project.vo.ContactusVo;
import com.bc.web_project.vo.PagingVo;

@Repository
public interface ServiceCenterDAO {
	public int insert(ContactusVo contactusVo);
	public List<ContactusVo> contactusList(PagingVo pagingVo) throws Exception;
	public int update(ContactusVo contactusVo);
	public int selectCount() throws Exception;
}
