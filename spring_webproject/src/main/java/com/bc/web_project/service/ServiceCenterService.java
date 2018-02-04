package com.bc.web_project.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import com.bc.web_project.vo.ContactusVo;

@Service
public interface ServiceCenterService {
	public boolean regist(ContactusVo contactusVo) throws Exception;
	public boolean modify(ContactusVo contactusVo) throws Exception;
	public List<ContactusVo> readCuList() throws Exception;
}
