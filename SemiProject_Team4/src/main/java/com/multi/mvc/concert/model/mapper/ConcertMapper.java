package com.multi.mvc.concert.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.concert.model.vo.ConcertVO;


@Mapper
public interface ConcertMapper {
	List<ConcertVO> selectConcertAll();
	
	List<ConcertVO> concertBest();
	
	List<ConcertVO> concSearch(Map<String, Object> param);

	int countSearch(Map<String, Object> param);
}
