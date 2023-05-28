package com.multi.mvc.concert.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ConcertVO {
	
	private String conId;
	private int rankNum;
	private String showNm;
	private String cate;
	private String showPd;
	private String showPlace;
	private int seatCnt;
	private int showCnt;
	private String area;
	private String poster;
	
}