package com.hotel.model;

public class InfoDTO {			// 공지사항 DTO
	private int infoNo;			// 공지사항 번호
	private String adminId;		// 작성자 아이디
	private String infoTitle;	// 공지사항 제목
	private String infoContent;	// 공지사항 내용
	private int infoHit;		// 공지사항 조회수
	private String infoDate;	// 공지사항 작성일(sysdate)
	
	public int getInfoNo() {
		return infoNo;
	}
	public void setInfoNo(int infoNo) {
		this.infoNo = infoNo;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getInfoTitle() {
		return infoTitle;
	}
	public void setInfoTitle(String infoTitle) {
		this.infoTitle = infoTitle;
	}
	public String getInfoContent() {
		return infoContent;
	}
	public void setInfoContent(String infoContent) {
		this.infoContent = infoContent;
	}
	public int getInfoHit() {
		return infoHit;
	}
	public void setInfoHit(int infoHit) {
		this.infoHit = infoHit;
	}
	public String getInfoDate() {
		return infoDate;
	}
	public void setInfoDate(String infoDate) {
		this.infoDate = infoDate;
	}
}
