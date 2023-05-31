package com.multi.mvc.member.model.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Member {
	private int mno;
	private String id;
	private String password;
	private String name;
	private String gender;
	private String address;
	private String favDistrict;
	private Date enrollDate;
	private String role;
	private String status;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date birth;
	private String oriFileNm;
	private String reFileNm;
	private String phone;
}


