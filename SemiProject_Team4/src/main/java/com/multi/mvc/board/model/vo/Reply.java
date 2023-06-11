package com.multi.mvc.board.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Reply {
	private int replyNo;
	private int bno;
	private int mno;
	private String name;
	private String writerId;
	private String replyContent;
	private String replyStatus;
	private Date replycreateDate;
	private String reFileNm;
}
