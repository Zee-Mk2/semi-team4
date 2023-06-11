package com.multi.mvc.board.model.service;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.multi.mvc.board.model.mapper.BoardMapper;
import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.board.model.vo.Reply;
import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class BoardService {
	@Autowired
	private BoardMapper mapper;
	
	private static int count = 0;
	public String saveFile(MultipartFile upfile, String savePath) {
		File folder = new File(savePath);
		
		// 폴더가 없으면 경로채 폴더 만들어주는 코드
		if(folder.exists() == false) {
			folder.mkdirs();
		}
		log.info(savePath);
		
		// 파일 이름을 날짜시간 + 랜덤하게 바꾸는 코드, text.txt -> 20230522_14230230202.txt
		String originalFileName = upfile.getOriginalFilename();
		String renamedFileName = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd_HHmmssSSS"));
		renamedFileName += (count++);									
		renamedFileName += originalFileName.substring(originalFileName.lastIndexOf(".")).toLowerCase();
		String renamedPath = savePath + "/" + renamedFileName;
		log.info("saveFile method, filePath>> " + renamedFileName);
		
		try {
			// 실제 파일이름을 변경하여 저장하는 코드
			upfile.transferTo(new File(renamedPath));
		} catch (Exception e) {
			return null;
		}
		
		return renamedFileName;
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int posting(Board board) {
		int result = 0;
		log.info(String.valueOf(board.getBno()));
		if(board.getBno() == 0) {
			log.info("게시글 등록 요청");
			result = mapper.posting(board);
		} else {
			log.info("게시글 수정 요청");
			result = mapper.updatePost(board);
		}
		return result;
	}

	public int getBoardCount(Map<String, Object> param) {
		return mapper.selectBoardCount(param);
	}
	
	public List<Board> selectInfoBoardList(PageInfo pageInfo, Map<String, Object> param) {
		param.put("limit", pageInfo.getListLimit());
		param.put("offset", (pageInfo.getStartList() - 1));
		return mapper.selectInfoBoardList(param);
	}
	
	public Board selectBoardDetail(int bno) {
		mapper.updateViews(bno);
		return mapper.selectBoardDetail(bno);
	}
	
	public void deleteFile(String path) {
		File file = new File(path);
		if(file.exists()) {
			file.delete();
		}
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int deleteBoard(Map<String, String> param) {
		return mapper.deleteBoard(param);
	}

	public List<Board> getRivewsById(Map<String, Object> param) {
		return mapper.getRivewsById(param);
	}

	public List<Board> getReviewsByMno(int mno) {
		return mapper.getReviewsByMno(mno);
	}

}
