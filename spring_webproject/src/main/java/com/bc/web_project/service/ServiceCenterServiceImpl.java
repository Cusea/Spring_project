package com.bc.web_project.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bc.web_project.dao.ServiceCenterDAO;
import com.bc.web_project.vo.ContactusVo;
import com.bc.web_project.vo.PagingVo;

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
		return (serviceCenterDao.update(contactusVo)>0)? true:false;
	}

	@Override
	public Map<String,Object> readCuList(int page) throws Exception {
		Map<String,Object> list = new HashMap<String,Object>();
		PagingVo pagingVo = new PagingVo();
		int total_row = serviceCenterDao.selectCount();
		pagingVo.setPage(page, total_row);
		List<ContactusVo> cuList = serviceCenterDao.contactusList(pagingVo);
		list.put("pagingVo", pagingVo);
		list.put("cuList", cuList);
		return list;
	}

	
	
}
