package com.multi.mvc.concert.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ConHall {
	private String conHallId;
	private String conHallNm;
	private String hallChar;
	private String gugunNm;
	private String sidoNm;
	private String la;
	private String lo;
	private String adres;
	private String numOfHalls;
	private String openYear;
	private String homepage;
	private String numOfSeats;
	private String telNo;
}
