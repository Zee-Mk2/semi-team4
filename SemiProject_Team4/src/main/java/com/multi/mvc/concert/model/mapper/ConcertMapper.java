package com.multi.mvc.concert.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.concert.model.vo.ConHall;
import com.multi.mvc.concert.model.vo.ConcertVO;
import com.multi.mvc.member.model.vo.ConcBookmark;


@Mapper
public interface ConcertMapper {
	List<ConcertVO> selectConcertAll();
	
	List<ConcertVO> concertBest();
	
	List<ConcertVO> concSearch(Map<String, Object> param);

	int countSearch(Map<String, Object> param);

	ConcertVO concDetailById(Map<String, Object> param);

	int concBookmark(Map<String, Object> param);
	
	int concBookmarkRemove(Map<String, Object> param);
	
	List<ConcBookmark> getConcBookmark(int mno);

	String HallIdOfConcTable(Map<String, Object> param);

	String getConhallId(String hallId);
}
