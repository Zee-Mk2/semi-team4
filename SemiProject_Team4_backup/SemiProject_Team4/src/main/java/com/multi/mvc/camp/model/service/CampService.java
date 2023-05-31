package com.multi.mvc.camp.model.service;

import java.util.List;

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
}
