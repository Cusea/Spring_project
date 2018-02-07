package com.bc.web_project.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bc.web_project.dao.CategoryDao;
import com.bc.web_project.dao.CityDao;
import com.bc.web_project.dao.PlaceDao;
import com.bc.web_project.vo.CategoryVo;
import com.bc.web_project.vo.CityVo;
import com.bc.web_project.vo.PlaceVo;

@Transactional
@Service
public class SpotServiceImp implements SpotService{

	@Inject
	private CityDao cityDao;
	@Inject
	private CategoryDao cateDao;
	@Inject
	private PlaceDao placeDao;
	
	@Transactional
	@Override
	public List<Object> loadSpot(int spotNum) {
		List<Object> list=new ArrayList<Object>();
		PlaceVo vo=new PlaceVo();
		vo=placeDao.selectOne(spotNum);
		list.add(vo);
		return list;
	}
	@Override
	public List<PlaceVo> loadSpotList(int cityNum) {
		List<PlaceVo> list=new ArrayList<>();
		list=placeDao.selectList(cityNum);
		return list;
	}
	@Transactional
	@Override
	public Map<String, Object> loadCityInfo(int cityNum){
		Map<String,Object> map=new HashMap<String,Object>();
		CityVo vo=new CityVo();
		vo=cityDao.selectOne(cityNum);
		String imgPath=vo.getImageAddList();
		String[] imgs=splitImgStr(imgPath);
		map.put("name",vo.getArea());
		map.put("arr",imgs);
		return map;
	}
	@Override
	public Map<String, Object> loadCategory() {
		Map<String, Object> data=new HashMap<>();//전부 담을 공간
		
		Map<String, Object> main=new HashMap<>();//메인의 미드들
		List<String> category=cateDao.selectMain();
		data.put("main_category_list", category);
		String mainCate=category.get(0);
		String sub1=category.get(1);
		String sub2=category.get(2);
		
		List<Object> subList1=new ArrayList<Object>();
		List<Object> subList2=new ArrayList<Object>();
		
		List<String> mainSubName=new ArrayList<String>();
		List<CategoryVo> voList=new ArrayList<>();
		voList=cateDao.selectList();
		for (CategoryVo vo : voList) {
			if(vo.getMain_category().equals(mainCate)) {
				//subList1.add(e)(vo.getMid_category(),vo.toString2());
				mainSubName.add(vo.getMid_category());
				main.put(vo.getMid_category(),vo);
			}else if(vo.getMain_category().equals(sub1)) {
				subList1.add(vo);
			}else {
				subList2.add(vo);
			}
		}
		main.put("subList",mainSubName);
		data.put("main", main);
		data.put("sub1", subList1);
		data.put("sub2", subList2);
		return data;
	}
	
	
	private String[] splitImgStr(String imgPath) {
		imgPath=imgPath.substring(1,imgPath.length()-1);
		String arr[]=imgPath.split(",");
		return arr;
	}


}
