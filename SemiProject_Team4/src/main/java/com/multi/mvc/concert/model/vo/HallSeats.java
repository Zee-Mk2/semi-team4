package com.multi.mvc.concert.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class HallSeats {
	private Date startTime;
	private int R;
	private int S;
	private int A;
}
