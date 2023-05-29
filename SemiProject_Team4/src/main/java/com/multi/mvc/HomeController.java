package com.multi.mvc;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.multi.mvc.camp.model.service.CampService;

import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Controller
@Slf4j 
public class HomeController {
	
	@Autowired
	private CampService service;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String welcome(Locale locale, Model model) {
		
		model.addAttribute("list" ,service.selectCampAll());
		
		return "index-camping";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "index-camping";
	}
	
	@RequestMapping(value = "/freeBoard", method = RequestMethod.GET)
	public String communityFree(Locale locale, Model model) {
		
		
		return "/board/community-free";
	}
	
	@RequestMapping(value = "/info", method = RequestMethod.GET)
	public String Info(Locale locale, Model model) {
		
		
		return "/board/community-info";
	}
	
	@RequestMapping(value = "/camp-booking", method = RequestMethod.GET)
	public String campBooking(Locale locale, Model model) {
		
		return "/camping/camping-booking";
	}
	
	@RequestMapping(value = "/permit", method = RequestMethod.GET)
	public String permit(Locale locale, Model model) {
		
		return "/common/permit";
	}
	
	@RequestMapping(value = "/camp-detail", method = RequestMethod.GET)
	public String campDetail(Locale locale, Model model) {
		
		return "/camping/camping-detail";
	}
	
	@RequestMapping(value = "/sign-in", method = RequestMethod.GET)
	public String signIn(Locale locale, Model model) {
		
		return "/common/sign-in";
	}
	
	@RequestMapping(value = "/sign-up", method = RequestMethod.GET)
	public String signUp(Locale locale, Model model) {
		
		return "/common/sign-up";
	}
	
	@RequestMapping(value = "/conc-home", method = RequestMethod.GET)
	public String concertHome(Locale locale, Model model) {
		
		return "/index-concert";
	}
	
	@RequestMapping(value = "/camp-search", method = RequestMethod.GET)
	public String campSearch(Locale locale, Model model) {
		
		return "/camping/camping-search";
	}
	
	@RequestMapping(value = "/board-detail", method = RequestMethod.GET)
	public String boardDetail(Locale locale, Model model) {
		
		return "/board/community-detail";
	}
	
	@RequestMapping(value = "/board-review", method = RequestMethod.GET)
	public String boardInfo(Locale locale, Model model) {
		
		return "/board/community-review";
	}
	
	@RequestMapping(value = "/conc-detail", method = RequestMethod.GET)
	public String home2(Locale locale, Model model) {
		
		return "/concert/concert-detail";
	}
	
	@RequestMapping(value = "/conc-booking", method = RequestMethod.GET)
	public String concBooking(Locale locale, Model model) {
		
		return "/concert/concert-booking";
	}
	
	
	
}























