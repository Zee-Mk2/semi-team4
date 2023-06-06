package com.multi.mvc.concert.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.concert.model.mapper.ConcertMapper;
import com.multi.mvc.concert.model.vo.ConHall;
import com.multi.mvc.concert.model.vo.ConcertVO;
import com.multi.mvc.member.model.vo.ConcBookmark;

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

	public ConcertVO concDetailById(Map<String, Object> param) {
		mapper.concViewsPlus(param);
		String hallId = mapper.HallIdOfConcTable(param);
		param.put("hallId", mapper.getConhallId(hallId));
		return mapper.concDetailById(param);
	}

	public int concBookmark(Map<String, Object> param) {
		return mapper.concBookmark(param);
	}

	public int concBookmarkRemove(Map<String, Object> param) {
		return mapper.concBookmarkRemove(param);
	}
	
	public Map<String, Integer> getConcBookmark(int mno) {
		List<ConcBookmark> list = mapper.getConcBookmark(mno);
		Map<String, Integer> map = new HashMap<>();
		for (ConcBookmark obj : list) {
			map.put(obj.getConId(), 1);
		}
		
		return map;
	}
	
}
