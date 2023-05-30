package com.multi.mvc.member.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.member.model.vo.Member;

//@Mapper : DAO 없이 자동으로 Mapper 객체를 생성해주는 어노테이션. 별도의 DAO 작성이 필요 없어진다.
//※ 주의 : mapper의 id와 동일한 메소드 네이밍을 맞춰야한다. 

@Mapper
public interface MemberMapper {
	/**
	 * id를 입력하면 Member객체를 반환
	 * @param id
	 * @return Member
	 */
	Member selectMemberById(String id);
}
