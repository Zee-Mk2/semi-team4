package com.multi.mvc.concert.controller;

import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.concert.model.service.ConcertService;
import com.multi.mvc.concert.model.vo.ConcertVO;

import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Controller
@Slf4j 
public class ConcertController {
	
	@Autowired
	private ConcertService service;
	
	@RequestMapping(value = "/conc-home", method = RequestMethod.GET)
	public String concertHome(Locale locale, Model model) {
		model.addAttribute("conBestList", service.concertBest());
		return "/index-concert";
	}

	@RequestMapping(value = "/conc-detail", method = RequestMethod.GET)
	public String concDetailPage(Model model, @RequestParam Map<String, Object> param) {
		ConcertVO item = service.concDetailById(param);
		item.setTicketPrice(item.getTicketPrice().replace("원,", "원<br>"));
		item.setStartTime(item.getStartTime().replace("),", ")<br>"));
		String[] introImg = item.getIntroImg().replace(" ", "").split("\n");
		for (String str : introImg) {
			log.info(str);
		}
		model.addAttribute("item", item);
		model.addAttribute("introImg", introImg);
		
		return "/concert/concert-detail";
	}
	
	@RequestMapping(value = "/conc-nearby", method = RequestMethod.GET)
	public String concNearby() {
		
		return "/concert/concert-nearby";
	}
	
	@RequestMapping(value = "/conc-booking", method = RequestMethod.GET)
	public String concBookingPage() {
		
		return "/concert/concert-booking";
	}
	
	@GetMapping(value = "/conc-search")
	public String concSearchPage(Model model, @RequestParam Map<String, Object> param) {
		log.info("concSearchPage 호출됨");
		
		int page = 1;
		try {
			page = Integer.parseInt((String) param.get("page"));
		} catch (Exception e) {}
		
		int resultCount = service.countSearch(param);
		PageInfo pageInfo = new PageInfo(page, 5, resultCount, 16);
		List<ConcertVO> list = service.concSearch(pageInfo, param);
		
		int numOfResult = service.countSearch(param);
		
		model.addAttribute("items", list);
		model.addAttribute("numOfResult", numOfResult);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		
		return "/concert/concert-search";
	}
	
	@PostMapping(value = "/conc-bookmark")
	public void concBookmark(@RequestParam Map<String, String> param) {
		log.info("concBookmark 호출됨");
		
		
	}
}