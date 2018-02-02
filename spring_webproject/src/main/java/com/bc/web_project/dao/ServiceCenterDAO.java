package com.bc.web_project.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import com.bc.web_project.vo.ContactusVo;

@Repository
public interface ServiceCenterDAO {
	public int insert(ContactusVo contactusVo);
	public List<ContactusVo> contactusList();
}
