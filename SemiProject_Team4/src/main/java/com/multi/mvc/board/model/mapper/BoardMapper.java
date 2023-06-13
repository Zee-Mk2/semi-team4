package com.multi.mvc.board.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.board.model.vo.Reply;


@Mapper
public interface BoardMapper {

	int posting(Board board);

	int selectBoardCount(Map<String, Object> param);

	List<Board> selectInfoBoardList(Map<String, Object> param);
	
	Board selectBoardDetail(int bno);

	void updateViews(int bno);

	int updatePost(Board board);

	int deleteBoard(Map<String, String> param);

	int insertReply(Map<String, Object> param);
	
	int deleteReply(Map<String, Object> param);

	List<Reply> getReplyByBno(int bno);

	List<Board> getRivewsById(Map<String, Object> param);

	List<Board> getReviewsByMno(int mno);

	int pickInfo(Map<String, Object> param);

	
}
