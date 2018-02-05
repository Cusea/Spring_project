package com.bc.web_project.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.bc.web_project.vo.ContactusVo;

@Repository
public class ServiceCenterDAOImpl implements ServiceCenterDAO{

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.bitcamp.mapper.serviceMapper";
	
	@Override
	public int insert(ContactusVo contactusVo) {
		return session.insert(namespace+".sendContactus", contactusVo);
	}

	@Override
	public List<ContactusVo> contactusList() {
		return session.selectList(namespace+".listContactus");
	}

}
