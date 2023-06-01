package com.multi.mvc.camp.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.camp.model.vo.CampSiteVO;


@Mapper
public interface CampMapper {
	List<CampSiteVO> selectCampAll();
	List<CampSiteVO> campThemeBest();
	List<CampSiteVO> campSearch(Map<String, Object> param);
	int selectResultCount(Map<String, Object> param);
}
