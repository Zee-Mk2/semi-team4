package com.multi.mvc.camp.controller;

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
public class CampController {
	
	@Autowired
	private CampService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String welcome(Locale locale, Model model) {
		model.addAttribute("bestList", service.campThemeBest());
		
		return "index-camping";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		model.addAttribute("bestList", service.campThemeBest());
		
		return "index-camping";
	}
	
	@RequestMapping(value = "/camp-search", method = RequestMethod.GET)
	public String campSearchPage(Locale locale, Model model) {
		model.addAttribute("searchList", service.campSearch());
		return "/camping/camping-search";
	}
	
	@RequestMapping(value = "/camp-detail", method = RequestMethod.GET)
	public String campDetailPage() {
		
		return "/camping/camping-detail";
	}
	
	@RequestMapping(value = "/camp-booking", method = RequestMethod.GET)
	public String campBookingPage() {
		
		return "/camping/camping-booking";
	}
	
	@RequestMapping(value = "/board-main", method = RequestMethod.GET)
	public String comMainPage() {
		
		return "/board/community";
	}
	
	@RequestMapping(value = "/freeBoard", method = RequestMethod.GET)
	public String communityFreePage() {
		
		
		return "/board/community-free";
	}
	
	@RequestMapping(value = "/info", method = RequestMethod.GET)
	public String InfoPage() {
		
		
		return "/board/community-info";
	}
	
	@RequestMapping(value = "/board-review", method = RequestMethod.GET)
	public String boardReviewPage() {
		
		return "/board/community-review";
	}
	
	@RequestMapping(value = "/board-post", method = RequestMethod.GET)
	public String comPostPage() {
		
		
		return "/board/community-post";
	}
	
	@RequestMapping(value = "/board-detail", method = RequestMethod.GET)
	public String boardDetailPage() {
		
		return "/board/community-detail";
	}
	
	@RequestMapping(value = "/permit", method = RequestMethod.GET)
	public String permitPage() {
		
		return "/common/permit";
	}
	
	
	
	
}























