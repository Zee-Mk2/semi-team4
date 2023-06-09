package com.multi.mvc.member.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.multi.mvc.camp.model.vo.CampSiteVO;
import com.multi.mvc.concert.model.vo.ConcertVO;
import com.multi.mvc.member.model.vo.ConcBooking;
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
	
	/**
	 * 회원가입 쿼리
	 * @param member
	 * @return 성공: 1, 실패: 0
	 */
	int joinMember(Member member);

	/**
	 * 회원정보 수정 쿼리
	 * @param member
	 * @return 성공: 1, 실패: 0
	 */
	int updateMember(Member member);
	
	int deleteMember(int mno);

	Member findById(String id);
	
	int updateID(@Param("id") String id, @Param("mno") int mno);

	Member findByMno(int mno);

	int updatePwd(Map<String, Object> param);

	int duplID(String id);

	List<ConcertVO> getConWishList(int mno);
	
	List<CampSiteVO> getCampWishList(int mno);

	int deleteAllWishlist(int mno);

	List<ConcBooking> getConBookingList(Map<String, Object> param);

	int cancelBooking(Map<String, Object> param);



}
