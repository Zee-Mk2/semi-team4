package com.multi.mvc.camp.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.camp.model.vo.CampSiteVO;
import com.multi.mvc.member.model.vo.CampBookmark;
import com.multi.mvc.member.model.vo.ConcBookmark;


@Mapper
public interface CampMapper {
	List<CampSiteVO> selectCampAll();
	
	List<CampSiteVO> campThemeBest();
	
	List<CampSiteVO> campSearch(Map<String, Object> param);
	
	int selectResultCount(Map<String, Object> param);
	
	List<CampSiteVO> campThemeTopTen(Map<String, Object> param);
	
	CampSiteVO campDetailById(Map<String, Object> param);

	void campViewsPlus(Map<String, Object> param);

	int campBookmark(Map<String, Object> param);

	int campBookmarkRemove(Map<String, Object> param);

	List<CampBookmark> getCampBookmark(int mno);
		
}
