package com.multi.mvc.board.model.vo;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Board {
	private int bno;
	private int mno;
    private String contentId;
    private int rating;
	private String name;
	private String boardCat;
	private String boardTag;
	private String boardTitle;
	private String boardContent;
	private String boardOriFileNm;
	private String boardReFileNm;
	private Date boardCreateDate;
	private int boardViews;
	private String boardStatus;
	private List<Reply> replies;
	private String conNm;
	private String campNm;
	private String reFileNm;
}
