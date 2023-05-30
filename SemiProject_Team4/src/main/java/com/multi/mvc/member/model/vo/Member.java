package com.multi.mvc.member.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Member {
	private String mno;
	private String id;
	private String password;
	private String name;
	private String email;
	private String gender;
	private String address;
	private String favDistrict;
	private Date enrollDate;
	private String role;
	private String status;
	private Date birth;
	private String oriFileNm;
	private String reFileNm;
}


