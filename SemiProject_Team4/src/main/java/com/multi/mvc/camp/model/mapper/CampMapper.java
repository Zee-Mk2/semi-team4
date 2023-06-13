package com.multi.mvc.camp.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.camp.model.vo.CampSiteVO;
import com.multi.mvc.camp.model.vo.ThemaCnt;
import com.multi.mvc.member.model.vo.CampBookmark;


@Mapper
public interface CampMapper {
	List<CampSiteVO> selectCampAll();
	
	List<CampSiteVO> campThemeBest();
	
	List<CampSiteVO> campSearch(Map<String, Object> param);
	
	int selectResultCount(Map<String, Object> param);
	
	List<CampSiteVO> campThemeTopTen(Map<String, Object> param);
	
	CampSiteVO campDetailById(Map<String, Object> param);

	ThemaCnt getThemaCnt();

	void campViewsPlus(Map<String, Object> param);

	int campBookmark(Map<String, Object> param);

	int campBookmarkRemove(Map<String, Object> param);

	List<CampBookmark> getCampBookmark(int mno);

	int selectBoardCount(Map<String, Object> param);

	List<Board> selectInfoBoardList(Map<String, Object> param);
	
	List<Board> pickInfo(Map<String, Object> param);

	List<Board> pickReview(Map<String, Object> param);
	
		
}
