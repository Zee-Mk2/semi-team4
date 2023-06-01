package com.multi.mvc.camp.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.camp.model.mapper.CampMapper;
import com.multi.mvc.camp.model.vo.CampSiteVO;
import com.multi.mvc.common.util.PageInfo;

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
		return list;
	}

	public int getResultCount(Map<String, Object> param) {
		return mapper.selectResultCount(param);
	}
}















