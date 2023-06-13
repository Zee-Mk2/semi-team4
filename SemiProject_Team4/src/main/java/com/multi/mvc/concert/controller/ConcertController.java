package com.multi.mvc.concert.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.multi.mvc.board.model.service.BoardService;
import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.concert.model.service.ConcertService;
import com.multi.mvc.concert.model.vo.ConHall;
import com.multi.mvc.concert.model.vo.ConcertVO;
import com.multi.mvc.concert.model.vo.HallSeats;
import com.multi.mvc.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Controller
@Slf4j 
public class ConcertController {
	
	@Autowired
	private ConcertService service;
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value = "/conc-home", method = RequestMethod.GET)
	public String concertHome(Locale locale, Model model, HttpSession session) {
		Member loginMember = (Member) session.getAttribute("loginMember");
		
		if (loginMember != null) {
			Map<String, Integer> bookmarks = service.getConcBookmark(loginMember.getMno());
			log.info("concertHome - 북마크>> " + bookmarks.toString());
			model.addAttribute("bookmarks", bookmarks);
		}
		
		List<Board> reviewList = service.pickReview();
		log.info("@@@@@@@@@@@@ reviewList>> " + reviewList);
		model.addAttribute("reviewList", reviewList);
		
		List<Board> freeList = service.pickFree();
		log.info("@@@@@@@@@@@@ freeList>> " + freeList);
		model.addAttribute("freeList", freeList);
		
		model.addAttribute("conBestList", service.concertBest());
		return "/index-concert";
	}

	@RequestMapping(value = "/conc-detail", method = RequestMethod.GET)
	public String concDetailPage(Model model, @RequestParam Map<String, Object> param, HttpSession session) {
		Member loginMember = (Member) session.getAttribute("loginMember");
		
		if (loginMember != null) {
			Map<String, Integer> bookmarks = service.getConcBookmark(loginMember.getMno());
			log.info("concertHome - 북마크>> " + bookmarks.toString());
			model.addAttribute("bookmarks", bookmarks);
		}
		
		ConcertVO item = service.concDetailById(param);
		param.put("contentID", param.get("conId"));
		log.info("@@@@@@@ concDetailPage param>> " + param.toString());
		List<Board> reviews = boardService.getRivewsById(param);
		item.setTicketPrice(item.getTicketPrice().replace("원,", "원<br>"));
		String[] introImg = item.getIntroImg().replace(" ", "").split("\n");
		for (String str : introImg) {
			log.info(str);
		}
		model.addAttribute("item", item);
		model.addAttribute("introImg", introImg);
		model.addAttribute("reviews", reviews);
		
		return "/concert/concert-detail";
	}
	
	@RequestMapping(value = "/conc-recommend", method = RequestMethod.GET)
	public String concrecommend(@RequestParam Map<String, Object> param, Model model) {
		log.info("추천페이지>> " + param.toString());
		List<ConcertVO> items = service.conThemeTopTen(param);
		for (ConcertVO obj : items) {
			log.info("item>> " + obj);
		}
		model.addAttribute("items", items);
		
		return "/concert/concert-recommend";
	}
	
	@RequestMapping(value = "/conc-nearby", method = RequestMethod.GET)
	public String concNearby(Model model) {
		List<ConHall> items = service.getNearByConHall();
		model.addAttribute("items", items);
		return "/concert/concert-nearby";
	}
	
	@RequestMapping(value = "/conc-booking", method = RequestMethod.GET)
	public String concBookingPage(Model model, @RequestParam Map<String, Object> param, @SessionAttribute(name="loginMember", required = false) Member loginMember) {
		if (loginMember == null) {
			model.addAttribute("msg", "로그인한 상태가 아닙니다.");
			model.addAttribute("location", "/sign-in");
			return "common/msg";
		}
		ConcertVO conc = service.concDetailById(param);
		conc.setStartTime(conc.getStartTime().replace(", ", "<br>"));
		conc.setTicketPrice(conc.getTicketPrice().replace("원, ", "원<br>"));
		
		HallSeats prices = service.getPrices(param);
		
		model.addAttribute("conc", conc);
		model.addAttribute("prices", prices);
		
		return "/concert/concert-booking";
	}
	
//	@PostMapping(value = "/conc-booking")
//	public String concBooking(@RequestParam Map<String, Object> param, @RequestParam("seatNo") String[] seatNos, Model model,
//			@SessionAttribute(name="loginMember", required = false) Member loginMember) {
//		if (loginMember == null) {
//			model.addAttribute("msg", "잘못된 접근입니다.");
//			model.addAttribute("location", "/sign-in");
//			return "common/msg";
//		}
//		log.info("@@@@ concBooking>> " + param.toString());
//		log.info("@@@@ concBooking - seatNos>> " + Arrays.toString(seatNos));
//		int result = service.reqBooking(param, seatNos);
//		if (result == 0) {
//			model.addAttribute("msg", "예약에 실패했습니다.");
//			model.addAttribute("location", "/conc-detail?conId=" + param.get("conId"));
//		} else {
//			model.addAttribute("msg", "공연이 예매되었습니다.<br>마이페이지 나의 예약정보에서 확인할 수 있습니다.");
//			model.addAttribute("location", "/conc-detail?conId=" + param.get("conId"));
//		}
//		
//		return "common/msg";
//	}
	
	@GetMapping(value = "/conc-search")
	public String concSearchPage(Model model, @RequestParam Map<String, Object> param, HttpSession session) {
		Member loginMember = (Member) session.getAttribute("loginMember");
		
		if (loginMember != null) {
			Map<String, Integer> bookmarks = service.getConcBookmark(loginMember.getMno());
			log.info("concertHome - 북마크>> " + bookmarks.toString());
			model.addAttribute("bookmarks", bookmarks);
		}
		
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
	
	@ResponseBody
	@RequestMapping(value = "/conc-bookmarkRemove", produces = "text/html; charset=utf-8")
	public String concBookmarkRemove(HttpSession session, @RequestParam Map<String, Object> param) {
		log.info("concBookmarkRemove called");
		Member loginMember = (Member) session.getAttribute("loginMember");
		
		if (loginMember != null) {
			param.put("mno", loginMember.getMno());
			log.info("conBookmarkRemove - param>> " + param.toString());
			int result = service.concBookmarkRemove(param);
			
			return String.valueOf(result);
		} else {
			log.info("로그인 한 상태가 아닙니다.");
			return "0";
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "/conc-bookmark", produces = "text/html; charset=utf-8")
	public String concBookmark(HttpSession session, @RequestParam Map<String, Object> param) {
		log.info("concBookmark called");
		Member loginMember = (Member) session.getAttribute("loginMember");
		
		if (loginMember != null) {
			param.put("mno", loginMember.getMno());
			int result = service.concBookmark(param);
			
			return String.valueOf(result);
		} else {
			log.info("로그인 한 상태가 아닙니다.");
			return "0";
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "/conc-getScheduleList", produces = "application/json; charset=utf-8")
	public List<HallSeats> getScheduleList(@RequestBody Map<String, Object> param) {
		String str = String.valueOf(param.get("selectedDate"));
		param.put("selectedDate", str.substring(0, str.indexOf("T")));
		log.info("@@@@@@@@@@@ getScheduleList - param>> " + param.toString());
		List<HallSeats> seats = service.getHallSeatsByDay(param);
		
		for (HallSeats obj : seats) {
			obj.setStartTime(obj.getStartTime());
		}
		
		return seats;
	}
	
	@ResponseBody
	@RequestMapping(value = "/conc-bookedSeats", produces = "application/json; charset=utf-8")
	public List<String> bookedSeats(@RequestBody Map<String, Object> param) {
		log.info("@@@@@@@@@@@ bookedSeats - param>> " + param);
		Map<String, Object> map = new HashMap<>();
		String str = String.valueOf(param.get("date")).replace(".", "").replace(" ", "-") + " " +  String.valueOf(param.get("time"));
		map.put("startTime", str);
		List<String> bookedSeats = service.bookedSeats(map);
		log.info("@@@@@@@@@@@ bookedSeats - bookedSeats>> " + bookedSeats);
		
		return bookedSeats;
	}
	
	
}