package com.bc.web_project.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bc.web_project.dao.ServiceCenterDAO;
import com.bc.web_project.vo.ContactusVo;

@Service
public class ServiceCenterServiceImpl implements ServiceCenterService{

	@Inject
	private ServiceCenterDAO serviceCenterDao;
	
	
	@Override
	public boolean regist(ContactusVo contactusVo) throws Exception {
		return (serviceCenterDao.insert(contactusVo)>0)? true:false;
	}

	@Override
	public boolean modify(ContactusVo contactusVo) throws Exception {
		return false;
	}

	@Override
	public List<ContactusVo> readCuList() throws Exception {
		return serviceCenterDao.contactusList();
	}

	
	
}
