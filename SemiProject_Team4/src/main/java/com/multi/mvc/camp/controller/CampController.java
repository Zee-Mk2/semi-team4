package com.multi.mvc.camp.controller;

import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.multi.mvc.board.model.service.BoardService;
import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.camp.model.service.CampService;
import com.multi.mvc.camp.model.vo.CampSiteVO;
import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Controller
@Slf4j 
public class CampController {
	
	@Autowired
	private CampService service;
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String welcome(Locale locale, Model model, HttpSession session) {
		Member loginMember = (Member) session.getAttribute("loginMember");
		
		if (loginMember != null) {
			Map<Integer, Integer> bookmarks = service.getCampBookmark(loginMember.getMno());
			log.info("campHome - 북마크>> " + bookmarks.toString());
			model.addAttribute("bookmarks", bookmarks);
		}
		
		model.addAttribute("bestList", service.campThemeBest());
		
		return "index-camping";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
		Member loginMember = (Member) session.getAttribute("loginMember");
		
		if (loginMember != null) {
			Map<Integer, Integer> bookmarks = service.getCampBookmark(loginMember.getMno());
			log.info("campHome - 북마크>> " + bookmarks.toString());
			model.addAttribute("bookmarks", bookmarks);
		}
		
		model.addAttribute("bestList", service.campThemeBest());
		
		return "index-camping";
	}
	
	@RequestMapping(value = "/camp-search", method = RequestMethod.GET)
	public String campSearchPage(Model model, @RequestParam Map<String, Object> param) {
		log.info("param.toString()>> " + param.toString());
		int page = 1;
		try {
			page = Integer.parseInt((String) param.get("page"));
		} catch (Exception e) {}
		
		int resultCount = service.getResultCount(param);
		PageInfo pageInfo = new PageInfo(page, 5, resultCount, 15);
		List<CampSiteVO> list = service.campSearch(pageInfo, param);
		
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("numOfResult", resultCount);
		
		return "/camping/camping-search";
	}
	
	@RequestMapping(value = "/camp-recommend", method = RequestMethod.GET)
	public String campRecommendPage(@RequestParam Map<String, Object> param, Model model) {
		log.info("추천페이지>> " + param.toString());
		List<CampSiteVO> items = service.campThemeTopTen(param);
		for (CampSiteVO obj : items) {
			log.info("item>> " + obj);
		}
		
		model.addAttribute("items", items);
		
		return "/camping/camping-recommend";
	}
	
	@RequestMapping(value = "/camp-detail", method = RequestMethod.GET)
	public String campDetailPage(Model model, @RequestParam Map<String, Object> param, HttpSession session) {
		Member loginMember = (Member) session.getAttribute("loginMember");
		
		if (loginMember != null) {
			Map<Integer, Integer> bookmarks = service.getCampBookmark(loginMember.getMno());
			log.info("campHome - 북마크>> " + bookmarks.toString());
			model.addAttribute("bookmarks", bookmarks);
		}
		
		log.info("campDetailPage - param >> " + param.toString());
		CampSiteVO item = service.campDetailById(param);
		
		param.put("boardTag", "camp");
		param.put("contentID", param.get("contentId"));
		log.info("@@@@@@@ campDetailPage param>> " + param.toString());
		
		List<Board> reviews = boardService.getRivewsById(param);
		
		model.addAttribute("reviews", reviews);
		model.addAttribute("item", item);
		
		return "/camping/camping-detail";
	}
	
	@RequestMapping(value = "/camp-booking", method = RequestMethod.GET)
	public String campBookingPage() {
		
		return "/camping/camping-booking";
	}
	
	@RequestMapping(value = "/permit", method = RequestMethod.GET)
	public String permitPage() {
		
		return "/common/permit";
	}
	
	@ResponseBody
	@RequestMapping(value = "/camp-bookmarkRemove", produces = "text/html; charset=utf-8")
	public String campBookmarkRemove(HttpSession session, @RequestParam Map<String, Object> param) {
		log.info("campBookmarkRemove called");
		Member loginMember = (Member) session.getAttribute("loginMember");
		
		if (loginMember != null) {
			param.put("mno", loginMember.getMno());
			log.info("campBookmarkRemove - param>> " + param.toString());
			int result = service.campBookmarkRemove(param);
			
			return String.valueOf(result);
		} else {
			log.info("로그인 한 상태가 아닙니다.");
			return "0";
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "/camp-bookmark", produces = "text/html; charset=utf-8")
	public String campBookmark(HttpSession session, @RequestParam Map<String, Object> param) {
		log.info("campBookmark called");
		Member loginMember = (Member) session.getAttribute("loginMember");
		
		if (loginMember != null) {
			param.put("mno", loginMember.getMno());
			log.info("@@@@@@@@ campBookmark>> " + param.toString());
			int result = service.campBookmark(param);
			
			return String.valueOf(result);
		} else {
			log.info("로그인 한 상태가 아닙니다.");
			return "0";
		}
	}
	
	
}























