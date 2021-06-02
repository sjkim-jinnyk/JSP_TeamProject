package com.hotel.model;

public class AdminDTO {			// 관리자 DTO
	private String adminId;		// 관리자 아이디
	private String adminPwd;	// 관리자 비밀번호
	
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getAdminPwd() {
		return adminPwd;
	}
	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}

}
