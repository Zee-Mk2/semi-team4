package com.multi.mvc.member.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ConcBooking {
	private int resvNo;
	private int mno;
	private String conId;
	private String conHallId;
	private String seatNo;
	private String seatType;
	private String userName;
	private String tel;
	private Date resvTime;
	private String status;
	private String posterImg;
	private String conNm;
	private String conHallNm;
	private String seatPrice;
}
