package com.multi.mvc.concert.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.camp.model.vo.CampSiteVO;
import com.multi.mvc.concert.model.vo.ConcertVO;


@Mapper
public interface ConcertMapper {
	List<ConcertVO> selectConcertAll();
}
