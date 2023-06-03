package com.multi.mvc.concert.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.concert.model.mapper.ConcertMapper;
import com.multi.mvc.concert.model.vo.ConcertVO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class ConcertService {

	@Autowired
	private ConcertMapper mapper;
	
	public List<ConcertVO> selectConcertAll(){
		return mapper.selectConcertAll();
		
	}
	
	public List<ConcertVO> concertBest(){
		List<ConcertVO> list =  mapper.concertBest();
//		Map<String, CampSiteVO> map = null;
//		System.out.println(list.toString());
//		while (true) {
//			map.put("해변", )
//		}
		
		for (ConcertVO obj : list) {
			obj.setGenre(obj.getGenre().replace(",", "/"));
		}
		
		System.out.println(list.toString() + "\n");
		
		return list;
	}
	
	public List<ConcertVO> concSearch(PageInfo pageInfo, Map<String, Object> param) {
		param.put("limit", pageInfo.getListLimit());
		param.put("offset", (pageInfo.getStartList() - 1));
		log.info("conSearch - param>> " + param.toString());
		return mapper.concSearch(param);
	}

	public int countSearch(Map<String, Object> param) {
		return mapper.countSearch(param);
	}
	
}
