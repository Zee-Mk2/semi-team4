package com.multi.mvc.concert.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.concert.model.mapper.ConcertMapper;
import com.multi.mvc.concert.model.vo.ConcertVO;

@Service
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
	
}
















