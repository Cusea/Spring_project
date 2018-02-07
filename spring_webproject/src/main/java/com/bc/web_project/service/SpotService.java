package com.bc.web_project.service;

import java.util.List;
import java.util.Map;

import com.bc.web_project.vo.PlaceVo;

public interface SpotService {
	public List<Object> loadSpot(int spotNum);
	public List<PlaceVo> loadSpotList(int cityNum);
	public Map<String, Object> loadCityInfo(int cityNum);
	public Map<String,Object> loadCategory();
}
