package com.multi.mvc.camp.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.camp.model.vo.CampSiteVO;


@Mapper
public interface CampMapper {
	List<CampSiteVO> selectCampAll();
	List<CampSiteVO> campThemeBest();
	List<CampSiteVO> campSearch();
	List<CampSiteVO> campDetailSearch();
}
