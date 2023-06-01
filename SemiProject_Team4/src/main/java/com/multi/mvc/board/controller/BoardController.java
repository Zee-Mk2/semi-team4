package com.multi.mvc.board.controller;

import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.multi.mvc.board.model.service.BoardService;
import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.board.model.vo.Reply;
import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class BoardController {

	@Autowired
	private BoardService service;

	@Autowired
	private ResourceLoader resourceLoader; // 파일 다운로드 기능시 활용하는 loader
	
	@RequestMapping(value = "/community", method = RequestMethod.GET)
	public String comMainPage() {
		
		return "/board/community";
	}
	
	@RequestMapping(value = "/board-free", method = RequestMethod.GET)
	public String communityFreePage() {
		
		
		return "/board/community-free";
	}
	
	@RequestMapping(value = "/board-info", method = RequestMethod.GET)
	public String InfoPage() {
		
		
		return "/board/community-info";
	}
	
	@RequestMapping(value = "/board-review", method = RequestMethod.GET)
	public String boardReviewPage() {
		
		return "/board/community-review";
	}
	
	@RequestMapping(value = "/board-post", method = RequestMethod.GET)
	public String comPostPage(Model model, @RequestParam Map<String, Object> param) {
		log.info("PostPage>> " + param.toString());
		
		return "/board/community-post";
	}
	
	@RequestMapping(value = "/board-detail", method = RequestMethod.GET)
	public String boardDetailPage() {
		
		return "/board/community-detail";
	}
}








