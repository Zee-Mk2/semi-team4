package com.multi.mvc.camp.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.camp.model.mapper.CampMapper;
import com.multi.mvc.camp.model.vo.CampSiteVO;

@Service
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
			obj.setLocation(obj.getLocation().replace(",", "/"));
		}
		
		System.out.println(list.toString() + "\n");
		
		return list;
	}

}
