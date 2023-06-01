package com.multi.mvc.member.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.multi.mvc.member.model.mapper.MemberMapper;
import com.multi.mvc.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MemberService {
	
	@Autowired
	private MemberMapper mapper;
	
	@Autowired
	private BCryptPasswordEncoder pwEncoder;
	
	/**
	 * 로그인 메소드
	 * @param inputId
	 * @param inputPwd
	 * @return 로그인 성공시 member, 실패시 null
	 */
	public Member login(String inputId, String inputPwd) {
		log.info(inputId);
		Member member = mapper.selectMemberById(inputId);
		if(member == null) {
			return null;
		}
		
		if (member.getId().equals("admin")) {
			log.info("admin 로그인 시도");
			if (member != null && inputPwd.equals(member.getPassword())) {
				return member;
			} else {
				return null;
			}
		}
		
		System.out.println(member.getPassword()); // 회원가입을 정상적으로 진행하면 암호화된 hash 
		System.out.println(pwEncoder.encode(inputPwd)); // encode를 통해 평문을 hash로 변환
		System.out.println(pwEncoder.matches(inputPwd, member.getPassword())); // 변환하고 검사하는 메소드
		
		if(member != null && pwEncoder.matches(inputPwd, member.getPassword())) {
			log.info("로그인 성공");
			return member;
		} else {
			log.info("로그인 실패");
			return null;
		}
	}
	
	/**
	 * 회원가입, 회원정보 수정
	 * @param member
	 * @return 성공시 1, 실패시 0?
	 */
	@Transactional(rollbackFor = Exception.class)
	public int saveMember(Member member) {
		int result = 0;
		if (member.getMno() == 0) {
			String encodePw = pwEncoder.encode(member.getPassword()); // 암호화 로직
			member.setPassword(encodePw);
			result = mapper.joinMember(member);
		} else {
			result = mapper.updateMember(member);
		}
		
		return result;
	}

	/**
	 * id로 회원정보 조회
	 * @param id
	 * @return member
	 */
	public Member findById(String id) {
		return mapper.findById(id);
	}
	
	/**
	 * id 변경
	 * @param id
	 * @param mno 
	 * @return 성공 1, 실패 0
	 */
	@Transactional(rollbackFor = Exception.class)
	public int updateID(String id, int mno) {
		return mapper.updateID(id, mno);
	}

	public Member findByMno(int mno) {
		return mapper.findByMno(mno);
	}
	
}








