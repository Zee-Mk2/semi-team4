package com.multi.mvc.concert.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ConcertVO {
	private String conId;
	private String conNm;
	private String genre;
	private String conState;
	private Date startDate;
	private Date endDate;
	private String conHallNm;
	private String conHallId;
	private String openRun;
	private String cast;
	private String crew;
	private String runtime;
	private String viewAge;
	private String enterNm;
	private String ticketPrice;
	private String posterImg;
	private String introImg;
	private String story;
	private String startTime;
	private String status;
	private int bookmarks;
	private int views;
	
}