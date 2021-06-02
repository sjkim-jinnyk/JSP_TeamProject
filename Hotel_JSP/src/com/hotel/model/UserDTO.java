package com.hotel.model;

public class UserDTO {			// 회원 DTO

	private String userId;		// 회원
	private String userPwd;		// 회원 비밀번호
	private String userNname;	// 회원 이름
	private String userGen;		// 회원 성별(male, female 또는 남성, 여성 - 구현하기 편한 쪽으로)
	private String userPhone;	// 회원 전화번호
	private String userAddr;	// 회원 주소
	private String userEmail;	// 회원 이메일
	private int userPoint;		// 회원 포인트
	private String userDate;	// 회원 가입일(sysdate)
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserNname() {
		return userNname;
	}
	public void setUserNname(String userNname) {
		this.userNname = userNname;
	}
	public String getUserGen() {
		return userGen;
	}
	public void setUserGen(String userGen) {
		this.userGen = userGen;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserAddr() {
		return userAddr;
	}
	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public int getUserPoint() {
		return userPoint;
	}
	public void setUserPoint(int userPoint) {
		this.userPoint = userPoint;
	}
	public String getUserDate() {
		return userDate;
	}
	public void setUserDate(String userDate) {
		this.userDate = userDate;
	}
}