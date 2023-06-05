package com.multi.mvc.camp.controller;

import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.camp.model.service.CampService;
import com.multi.mvc.camp.model.vo.CampSiteVO;
import com.multi.mvc.common.util.PageInfo;

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
		log.info("異붿쿇�럹�씠吏�>> " + param.toString());
		List<CampSiteVO> items = service.campThemeTopTen(param);
		for (CampSiteVO obj : items) {
			log.info("item>> " + obj);
		}
		
		model.addAttribute("items", items);
		
		return "/camping/camping-recommend";
	}
	
	@RequestMapping(value = "/camp-detail", method = RequestMethod.GET)
	public String campDetailPage(Model model, @RequestParam Map<String, Object> param) {
		CampSiteVO item = service.campDetailById(param);
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
	
	
	
	
}























