package com.multi.mvc.concert.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.multi.mvc.camp.model.service.CampService;
import com.multi.mvc.concert.model.service.ConcertService;

import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Controller
@Slf4j 
public class ConcertController {
	
	@Autowired
	private ConcertService service1;
	
	@RequestMapping(value = "/conc-home", method = RequestMethod.GET)
	public String concertHome(Locale locale, Model model) {
		model.addAttribute("conBestList", service1.concertBest());
		return "/index-concert";
	}

	@RequestMapping(value = "/conc-detail", method = RequestMethod.GET)
	public String concDetailPage() {
		
		return "/concert/concert-detail";
	}
	
//	@RequestMapping(value = "/board-main", method = RequestMethod.GET)
//	public String comMainPage() {
//		
//		return "/board/community";
//	}
//	
//	@RequestMapping(value = "/freeBoard", method = RequestMethod.GET)
//	public String communityFreePage() {
//		
//		
//		return "/board/community-free";
//	}
//	
//	@RequestMapping(value = "/info", method = RequestMethod.GET)
//	public String InfoPage() {
//		
//		
//		return "/board/community-info";
//	}
//	
//	@RequestMapping(value = "/board-review", method = RequestMethod.GET)
//	public String boardReviewPage() {
//		
//		return "/board/community-review";
//	}
//	
//	@RequestMapping(value = "/board-post", method = RequestMethod.GET)
//	public String comPostPage() {
//		
//		
//		return "/board/community-post";
//	}
//	
//	@RequestMapping(value = "/board-detail", method = RequestMethod.GET)
//	public String boardDetailPage() {
//		
//		return "/board/community-detail";
//	}
//	
//	@RequestMapping(value = "/permit", method = RequestMethod.GET)
//	public String permitPage() {
//		
//		return "/common/permit";
//	}
//	
	
	
	
}























