package com.bc.web_project.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.bc.web_project.vo.ContactusVo;
import com.bc.web_project.vo.PagingVo;

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
	public List<ContactusVo> contactusList(PagingVo pagingVo) {
		return session.selectList(namespace+".listContactus", pagingVo);
	}

	@Override
	public int update(ContactusVo contactusVo) {
		return session.update(namespace+".contactusUpdate", contactusVo);
	}

	@Override
	public int selectCount() throws Exception {
		return session.selectOne(namespace+".selectCount");
	}

}
