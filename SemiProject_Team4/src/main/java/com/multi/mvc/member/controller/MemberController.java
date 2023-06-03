package com.multi.mvc.member.controller;

import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

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
			log.info("@@@로그인 성공>> " + loginMember.toString());
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
	
	@GetMapping(value = "/sign-up")
	public String signUpPage() {
		log.info("회원가입 페이지 요청");
		return "/account/sign-up";
	}
	
	@PostMapping(value = "/sign-up")
	public String signUp(Model model, Member member, HttpSession session, @RequestParam("upfile") MultipartFile upfile) {
		log.info("회원가입 요청");
		int result = 0;
		
		if(upfile != null && upfile.isEmpty() == false) {
			String rootPath = session.getServletContext().getRealPath("resources");
			String savePath = rootPath + "/upload/profile";
			log.info("controller에서 보내는 savePath>> " + savePath);
			String renamedFileName = service.saveFile(upfile, savePath); // 실제 파일 저장로직
			
			if(renamedFileName != null) {
				member.setReFileNm(renamedFileName);
				member.setOriFileNm(upfile.getOriginalFilename());
			}
		} else {
			member.setReFileNm("default-avatar.png");
		}
		log.info(member.toString());
		
		result = service.saveMember(member);
		
		if(result > 0) {
			model.addAttribute("msg", "회원가입 성공하였습니다.");
			model.addAttribute("location", "/");
		} else { 
			model.addAttribute("msg", "회원가입에 실패하였습니다. 입력정보를 확인해주세요.");
			model.addAttribute("location", "/sign-up");
		}
		
		return "common/msg";
	}
	
	@RequestMapping("/member/delete")
	public String delete(Model model, 
			@SessionAttribute(name="loginMember", required = false) Member loginMember // 세션값
			) {
		int result = service.delete(loginMember.getMno());
		
		if(result > 0) {
			model.addAttribute("msg", "회원탈퇴에 성공하였습니다.");
			model.addAttribute("location", "/logout");
		}else {
			model.addAttribute("msg", "회원탈퇴를 할수 없습니다.");
			model.addAttribute("location", "/MyProfile");
		}
		
		return "/common/msg";
	}

	
	@GetMapping(value = "/MyProfile")
	public String profilePage(Model model, @SessionAttribute(name="loginMember", required = false) Member loginMember) {
		if (loginMember == null) {
			model.addAttribute("msg","잘못된 접근입니다.");
			model.addAttribute("location","/");
			return "common/msg";
		}
		return "/account/account-profile";
	}
	
	@PostMapping(value = "/MyProfile")
	public String updateProfile(Model model, HttpSession session,
			@RequestParam("upfile") MultipartFile upfile,
			@ModelAttribute Member updateMember, // request에서 온 값
			@SessionAttribute(name="loginMember", required = false) Member loginMember) {
		log.info("update method/prev value>> " + String.valueOf(loginMember));
		log.info("update method/update value>> " + String.valueOf(updateMember));
		
		model.addAttribute("loginMember", loginMember);
		
		if(loginMember == null || loginMember.getId().equals(updateMember.getId()) == false) {
			model.addAttribute("msg","잘못된 접근입니다.");
			model.addAttribute("location","/");
			return "common/msg";
		}
		
		if(upfile != null && upfile.isEmpty() == false) {
			String rootPath = session.getServletContext().getRealPath("resources");
			String savePath = rootPath + "/upload/profile";
			log.info("controller에서 보내는 savePath>> " + savePath);
			String renamedFileName = service.saveFile(upfile, savePath); // 실제 파일 저장로직
			
			if(renamedFileName != null) {
				updateMember.setReFileNm(renamedFileName);
				updateMember.setOriFileNm(upfile.getOriginalFilename());
			}
			log.info("파일 업로드 성공");
		}
		
		updateMember.setMno(loginMember.getMno()); // update가 되는 코드
		int result = service.saveMember(updateMember);
		
		if(result > 0) {
			loginMember = service.findById(loginMember.getId());
			model.addAttribute("loginMember", loginMember); // 세션을 업데이트 하는 코드
			model.addAttribute("msg", "회원정보를 수정하였습니다.");
			model.addAttribute("location","/MyProfile");
		} else {
			model.addAttribute("msg", "회원정보 수정에 실패하였습니다.");
			model.addAttribute("location","/MyProfile");
		}
		log.info("updateProfile메소드 파일 업로드 체크>> " + loginMember.toString());
		
		return "common/msg";
	}
	
	@PostMapping("/update-id")
	public String updateId(Model model, String id, @SessionAttribute(name="loginMember", required = false) Member loginMember) {
		if(loginMember == null) {
			model.addAttribute("msg","잘못된 접근입니다.");
			model.addAttribute("location","/");
			return "common/msg";
		}
		log.info(id);
		int result = service.updateID(id, loginMember.getMno());
		
		if(result > 0) {
			loginMember = service.findByMno(loginMember.getMno());
			model.addAttribute("loginMember", loginMember); // 세션을 업데이트 하는 코드
			log.info("updateId>> " + loginMember.toString());
			model.addAttribute("msg", "로그인 이메일이 변경되었습니다.");
			model.addAttribute("location","/MyProfile");
		} else {
			model.addAttribute("msg", "이메일 변경에 실패했습니다.");
			model.addAttribute("location","/MyProfile");
		}
		
		return "common/msg";
	}
	
	@PostMapping(value = "/updatePwd")
	public String updatePwd(Model model, @RequestParam Map<String, String> param,
			@SessionAttribute(name="loginMember", required = false) Member loginMember) {
		log.info("updatePwd>> " + param.toString());
		
		String password = String.valueOf(param.get("curPwd"));
		boolean isMatchPwd = service.isMatchPwd(password, loginMember.getId());
		password = param.get("password");
		
		if(isMatchPwd) {
			int result = service.updatePwd(password, loginMember.getMno());
			loginMember = service.findByMno(loginMember.getMno());
			model.addAttribute("loginMember", loginMember); // 세션을 업데이트 하는 코드
			log.info("updatePwd>> " + loginMember.toString());
			model.addAttribute("msg", "비밀번호가 변경되었습니다.");
			model.addAttribute("location","/MyProfile");
		} else {
			model.addAttribute("msg", "비밀번호 변경에 실패했습니다.");
			model.addAttribute("location","/MyProfile");
		}
		
		return "common/msg";
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



















