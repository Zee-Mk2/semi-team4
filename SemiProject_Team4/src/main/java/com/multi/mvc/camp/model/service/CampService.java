package com.multi.mvc.camp.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.camp.model.mapper.CampMapper;
import com.multi.mvc.camp.model.vo.CampSiteVO;
import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.member.model.vo.CampBookmark;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class CampService {

	@Autowired
	private CampMapper mapper;
	
	public List<CampSiteVO> selectCampAll(){
		return mapper.selectCampAll();
		
	}
	
	public List<CampSiteVO> campThemeBest(){
		List<CampSiteVO> list =  mapper.campThemeBest();
//		Map<String, CampSiteVO> map = null;
//		System.out.println(list.toString());
//		while (true) {
//			map.put("해변", )
//		}
		for (CampSiteVO obj : list) {
			if (obj.getLocation() != null) {
				obj.setLocation(obj.getLocation().replace(",", "/"));
			}
		}
		return list;
	}
	
	public List<CampSiteVO> campSearch(PageInfo pageInfo, Map<String, Object> param){
		param.put("limit", pageInfo.getListLimit());
		param.put("offset", (pageInfo.getStartList() - 1));
		log.info(param.toString());
		List<CampSiteVO> list =  mapper.campSearch(param);
		for(CampSiteVO obj : list) {
			if (obj.getLocation() != null) {
				obj.setLocation(obj.getLocation().replace(",", "/"));
			}
		}
		return mapper.campSearch(param);
	}

	public int getResultCount(Map<String, Object> param) {
		return mapper.selectResultCount(param);
	}

	public List<CampSiteVO> campThemeTopTen(Map<String, Object> param) {
		return mapper.campThemeTopTen(param);
	}
	
	public CampSiteVO campDetailById(Map<String, Object> param) {
		mapper.campViewsPlus(param);
		
		return mapper.campDetailById(param);
	}
	
	public int campBookmark(Map<String, Object> param) {
		return mapper.campBookmark(param);
	}

	public int campBookmarkRemove(Map<String, Object> param) {
		return mapper.campBookmarkRemove(param);
	}
	
	public Map<Integer, Integer> getCampBookmark(int mno) {
		List<CampBookmark> list = mapper.getCampBookmark(mno);
		Map<Integer, Integer> map = new HashMap<>();
		for (CampBookmark obj : list) {
			map.put(obj.getContentID(), 1);
		}
		
		return map;
	}
	
	
	
}















