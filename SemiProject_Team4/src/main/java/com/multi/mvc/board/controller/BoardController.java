package com.multi.mvc.board.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.multi.mvc.board.model.service.BoardService;
import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.member.model.vo.Member;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@AllArgsConstructor
public class BoardController {

	@Autowired
	private BoardService service;

	@Autowired
	private ResourceLoader resourceLoader; // 파일 다운로드 기능시 활용하는 loader
	
	@RequestMapping(value = "/community", method = RequestMethod.GET)
	public String comMainPage(Model model) {
		Map<String, Object> param = null;
		int page = 1;
		
		param = new HashMap<String, Object>();
		param.put("boardCat", "free");
		int boardCount = service.getBoardCount(param);
		PageInfo pageInfo = new PageInfo(page, 5, boardCount, 5);
		List<Board> freeList = service.selectInfoBoardList(pageInfo, param);
		model.addAttribute("freeList", freeList);

		param = new HashMap<String, Object>();
		param.put("boardCat", "info");
		boardCount = service.getBoardCount(param);
		pageInfo = new PageInfo(page, 5, boardCount, 5);
		List<Board> infoList = service.selectInfoBoardList(pageInfo, param);
		model.addAttribute("infoList", infoList);
		model.addAttribute("campBest", infoList.get(0));
		model.addAttribute("concBest", infoList.get(0));
		
		param = new HashMap<String, Object>();
		param.put("boardCat", "review");
		boardCount = service.getBoardCount(param);
		pageInfo = new PageInfo(page, 5, boardCount, 3);
		List<Board> reviewList = service.selectInfoBoardList(pageInfo, param);
		model.addAttribute("reviewList", reviewList);
		
		
		
		return "/board/community";
	}
	
	@RequestMapping(value = "/board-free", method = RequestMethod.GET)
	public String communityFreePage(Model model, @RequestParam Map<String, Object> param) {
		log.info("board list 요청, param : " + param);
		
		int page = 1;
		try {
			if(param.get("searchType") != null) {
				param.put((String) param.get("searchType"), param.get("searchValue"));
			}
			
			page = Integer.parseInt((String) param.get("page"));
		} catch (Exception e) {}
		
		int boardCount = service.getBoardCount(param);
		PageInfo pageInfo = new PageInfo(page, 5, boardCount, 15);
		List<Board> list = service.selectInfoBoardList(pageInfo, param);
		
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("numOfResult", boardCount);
		
		return "/board/community-free";
	}
	
	@RequestMapping(value = "/board-info", method = RequestMethod.GET)
	public String InfoPage(Model model, @RequestParam Map<String, Object> param) {
		if (param.get("boardTag") == null) {
			param.put("boardTag", "conc");
		}
		log.info("board list 요청, param : " + param);
		
		int page = 1;
		try {
			if(param.get("searchType") != null) {
				param.put((String) param.get("searchType"), param.get("searchValue"));
			}
			
			page = Integer.parseInt((String) param.get("page"));
		} catch (Exception e) {}
		
		int boardCount = service.getBoardCount(param);
		PageInfo pageInfo = new PageInfo(page, 5, boardCount, 15);
		List<Board> list = service.selectInfoBoardList(pageInfo, param);
		
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("numOfResult", boardCount);
		
		return "/board/community-info";
	}
	
	@RequestMapping(value = "/board-review", method = RequestMethod.GET)
	public String boardReviewPage(Model model, @RequestParam Map<String, Object> param) {
		int page = 1;
		try {
			if(param.get("searchType") != null) {
				param.put((String) param.get("searchType"), param.get("searchValue"));
			}
			
			page = Integer.parseInt((String) param.get("page"));
		} catch (Exception e) {}
		
		if (param.get("boardTag") == null) {
			param.put("boardTag", "conc");
		}
		int boardCount = service.getBoardCount(param);
		PageInfo pageInfo = new PageInfo(page, 5, boardCount, 15);
		List<Board> list = service.selectInfoBoardList(pageInfo, param);
		
		model.addAttribute("list", list);
		log.info("@@@@@@@@@@@ list 요청, param : " + param);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("numOfResult", boardCount);
		
		return "/board/community-review";
	}
	
	@GetMapping(value = "/board-post")
	public String comPostPage(Model model,
			@ModelAttribute Board board,
			@RequestParam Map<String, Object> param,
			@SessionAttribute(name="loginMember", required = false) Member loginMember) {
		if (loginMember == null) {
			model.addAttribute("msg", "게시글을 작성하려면 로그인하세요.");
			model.addAttribute("location", "/sign-in");
			return "/common/msg";
		}
		log.info("boardUpdate Param>> " + param.toString());
		log.info("boardUpdate board>> " + board.toString());
		
		model.addAttribute("board", board);
		model.addAttribute("param", param);
		
		return "/board/community-post";
	}
	
	@PostMapping(value = "/board-post")
	public String comPost(Model model, HttpSession session,
			@ModelAttribute Board board,
			@SessionAttribute(name="loginMember", required = false) Member loginMember,
			@RequestParam("upfile") MultipartFile upfile) {
		log.info("PostPage>> " + board.toString());
		if (loginMember == null) {
			model.addAttribute("msg", "게시글을 작성하려면 로그인하세요.");
			model.addAttribute("location", "/sign-in");
			return "/common/msg";
		}
		board.setName(loginMember.getName());
		board.setMno(loginMember.getMno());
		
		if(upfile != null && upfile.isEmpty() == false) {
			String rootPath = session.getServletContext().getRealPath("resources");
			String savePath = rootPath + "/upload/board";
			log.info("controller에서 보내는 savePath>> " + savePath);
			String renamedFileName = service.saveFile(upfile, savePath); // 실제 파일 저장로직
			
			if(renamedFileName != null) {
				board.setBoardReFileNm(renamedFileName);
				board.setBoardOriFileNm(upfile.getOriginalFilename());
			}
		}
		board.setBoardContent(board.getBoardContent().replace("\n", "<br>"));
		log.info("comPost>> " + board.toString());
		int result = service.posting(board);
		
		if(result > 0) {
			model.addAttribute("msg", "게시글이 등록되었습니다.");
			model.addAttribute("location", "/board-" + board.getBoardCat() + "?boardCat=" + board.getBoardCat());
		} else {
			model.addAttribute("msg", "게시글 등록에 실패하였습니다.");
			model.addAttribute("location", "/board-" + board.getBoardCat() + "?boardCat=" + board.getBoardCat());
		}
		return "common/msg";
	}
	
	// http://localhost/mvc/board/delete?bno=51
	@RequestMapping(value = "/board-delete")
	public final String deleteBoard(Model model,  HttpSession session,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@RequestParam Map<String, String> param
			) {
		log.info("deleteBoard - param>> " + param.toString());
		
		int result = service.deleteBoard(param);
		
		if(result > 0) {
			model.addAttribute("msg", "게시글 삭제가 정상적으로 완료되었습니다.");
		}else {
			model.addAttribute("msg", "게시글 삭제에 실패하였습니다.");
		}
		model.addAttribute("location", "/board-" + param.get("boardCat") + "?boardCat=" + param.get("boardCat"));
		
		return "/common/msg";
	}
	
	@RequestMapping(value = "/board-detail", method = RequestMethod.GET)
	public String boardDetailPage(Model model, @RequestParam Map<String, Object> param,
			@SessionAttribute(name="loginMember", required = false) Member loginMember) {
		int bno = Integer.valueOf((String) param.get("bno"));
		Board result = service.selectBoardDetail(bno);
		log.info("boardDetailPage>> " + result);
		model.addAttribute("item", result);
		model.addAttribute("loginMember", loginMember);
		
		return "/board/community-detail";
	}
	
	
}








