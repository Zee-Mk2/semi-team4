package com.multi.mvc.member.model.service;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

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
	
	private static int count = 0;
	public String saveFile(MultipartFile upfile, String savePath) {
		File folder = new File(savePath);
		
		// 폴더가 없으면 경로채 폴더 만들어주는 코드
		if(folder.exists() == false) {
			folder.mkdirs();
		}
		log.info(savePath);
		
		// 파일 이름을 날짜시간 + 랜덤하게 바꾸는 코드, text.txt -> 20230522_14230230202.txt
		String originalFileName = upfile.getOriginalFilename();
		String renamedFileName = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd_HHmmssSSS"));
		renamedFileName += (count++);									
		renamedFileName += originalFileName.substring(originalFileName.lastIndexOf(".")).toLowerCase();
		String renamedPath = savePath + "/" + renamedFileName;
		log.info("saveFile method, filePath>> " + renamedFileName);
		
		try {
			// 실제 파일이름을 변경하여 저장하는 코드
			upfile.transferTo(new File(renamedPath));
		} catch (Exception e) {
			return null;
		}
		
		return renamedFileName;
	}
	
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
		if (mapper.duplID(member.getId()) != 0) {
			return 0;
		}
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
	
	@Transactional(rollbackFor = Exception.class)
	public int delete(int mno) {
		return mapper.deleteMember(mno);
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
		if (mapper.duplID(id) != 0) {
			return 0;
		}
		return mapper.updateID(id, mno);
	}

	public Member findByMno(int mno) {
		return mapper.findByMno(mno);
	}

	public int updatePwd(String password, int mno) {
		Map<String, Object> param = new HashMap<String, Object>();
		password = pwEncoder.encode(password);
		param.put("password", password);
		param.put("mno", mno);
		return mapper.updatePwd(param);
	}

	public boolean isMatchPwd(String password, String id) {
		return pwEncoder.matches(password, mapper.selectMemberById(id).getPassword()) ? true : false;
	}
	
}








