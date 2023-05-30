package com.multi.mvc.member.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.multi.mvc.kakao.KaKaoService;
import com.multi.mvc.member.model.service.MemberService;
import com.multi.mvc.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Slf4j // log4j 선언 대신에 작성해주는 lombok 어노테이션
@Controller
@SessionAttributes("loginMember") // loginMember를 model에서 취급할때 세션으로 처리하는 어노테이션
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@Autowired
	private KaKaoService kakaoService;


	
	@GetMapping(value = "/sign-in")
	public String signInPage() {
		log.info("로그인 페이지 호출");
		
		return "account/sign-in";
	}
	
	@PostMapping(value = "/sign-in")
	public String signIn(Model model, String inputId, String inputPwd) {
		log.info("@@@Login : " + inputId +", "+ inputPwd);
		
		Member loginMember = service.login(inputId, inputPwd);
		
		// 로그인이 성공한 케이스
		if(loginMember != null) {
			model.addAttribute("loginMember", loginMember); // 세션으로 저장되는 코드, @SessionAttributes 사용
			return "redirect:/"; // home으로 보내는 방법
		} else {
			model.addAttribute("msg", "아이디와 패스워드를 확인해주세요.");
			model.addAttribute("location", "/sign-in");
			return "/common/msg";
		}
	}
	
	@RequestMapping("/logout")
	public String logout(SessionStatus staus) { // staus: 세션의 상태확인 가능한 메소드
		log.info("staus : " + staus.isComplete());
		staus.setComplete(); // 세션을 종료 시키는 메소드
		log.info("staus : " + staus.isComplete());
		return "redirect:/";
	}
	
	@RequestMapping(value = "/sign-up", method = RequestMethod.GET)
	public String signUp(Locale locale, Model model) {
		
		return "/account/sign-up";
	}
	
	@RequestMapping(value = "/MyProfile", method = RequestMethod.GET)
	public String profile(Locale locale, Model model) {
		
		return "/account/account-profile";
	}
	
	@RequestMapping(value = "/pro-setting", method = RequestMethod.GET)
	public String setting(Locale locale, Model model) {
		
		return "/account/account-settings";
	}
	
	@RequestMapping(value = "/MyWishList", method = RequestMethod.GET)
	public String wishList(Locale locale, Model model) {
		
		return "/account/account-wishlist";
	}
	
	@RequestMapping(value = "/booking-info", method = RequestMethod.GET)
	public String booking(Locale locale, Model model) {
		
		return "/account/account-bookings";
	}
	
	@RequestMapping(value = "/myReview", method = RequestMethod.GET)
	public String myReview(Locale locale, Model model) {
		
		return "/account/account-review";
	}
	
	// contoller에서 전체 Error 처리하는 핸들러 
//	@ExceptionHandler(Exception.class)
//	public String error() {
//		return "/common/error";
//	}
}



















