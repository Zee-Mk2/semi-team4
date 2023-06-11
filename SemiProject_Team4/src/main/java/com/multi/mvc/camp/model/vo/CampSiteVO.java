package com.multi.mvc.camp.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CampSiteVO {
	private int contentID;
	private String campNm;
	private String lineIntro;
	private String intro;
	private String manStatus;
	private String feature;
	private String induType;
	private String location;
	private String doNm;
	private String sigunguNm;
	private String zipCode;
	private String addr;
	private String DetailAddr;
	private String mapX;
	private String mapY;
	private String direction;
	private String tel;
	private String homepage;
	private int gnrlSiteCo;
	private int autoSiteCo;
	private int glampSiteCo;
	private int caravSiteCo;
	private int indvdlCaravSiteCo;
	private int siteMg1Width;
	private int siteMg2Width;
	private int siteMg3Width;
	private int siteMg1Vrticl;
	private int siteMg2Vrticl;
	private int siteMg3Vrticl;
	private int siteMg1Co;
	private int siteMg2Co;
	private int siteMg3Co;
	private int siteBottomCl1;
	private int siteBottomCl2;
	private int siteBottomCl3;
	private int siteBottomCl4;
	private int siteBottomCl5;
	private String glampInnerFclty;
	private String caravInnerFclty;
	private String openSeason;
	private String openDay;
	private int toiletCo;
	private int showerCo;
	private int sinkCo;
	private String fireBowl;
	private String addFclty;
	private String surroundFclty;
	private String exprnProgrmAt;
	private String exprnProgrm;
	private int fireExtCo;
	private int fireSensorCo;
	private String campThema;
	private String animalEntry;
	private String tourDate;
	private String img;
	private int bookmarks;
	private int views;
	private double avgRating;
	private int numReviews;
}