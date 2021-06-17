package com.hotel.model;
 
public class ReserveDTO {		// 예약 DTO
	private int resNo;			// 예약 번호
	private String userId;		// 회원 아이디
	private String roomName;	// 객실 이름
	private int roomNumber;		// 객실 번호
	private String resDate;		// 예약 날짜(sysdate)
	private String resIn;		// 체크인 날짜
	private String resOut;		// 체크아웃 날짜
	private int resNod;		    // 숙박일수(NOD : Number of Day의 약자)
	private int resAdult;		// 어른 인원수
	private int resChild;		// 어린이 인원수
	private int resAdultBr;		// 어른 조식 갯수
	private int resChildBr;		// 어린이 조식 갯수
	private int resBed;			// 엑스트라 베드 갯수
	private int resTotal;		// 총 가격
	private String resRequest;	// 요청사항
	
	public int getResNo() {
		return resNo;
	}
	public void setResNo(int resNo) {
		this.resNo = resNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public int getRoomNumber() {
		return roomNumber;
	}
	public void setRoomNumber(int roomNumber) {
		this.roomNumber = roomNumber;
	}
	public String getResDate() {
		return resDate;
	}
	public void setResDate(String resDate) {
		this.resDate = resDate;
	}
	public String getResIn() {
		return resIn;
	}
	public void setResIn(String resIn) {
		this.resIn = resIn;
	}
	public String getResOut() {
		return resOut;
	}
	public void setResOut(String resOut) {
		this.resOut = resOut;
	}
	public int getResNod() {
		return resNod;
	}
	public void setResNod(int resNod) {
		this.resNod = resNod;
	}
	public int getResAdult() {
		return resAdult;
	}
	public void setResAdult(int resAdult) {
		this.resAdult = resAdult;
	}
	public int getResChild() {
		return resChild;
	}
	public void setResChild(int resChild) {
		this.resChild = resChild;
	}
	public int getResAdultBr() {
		return resAdultBr;
	}
	public void setResAdultBr(int resAdultBr) {
		this.resAdultBr = resAdultBr;
	}
	public int getResChildBr() {
		return resChildBr;
	}
	public void setResChildBr(int resChildBr) {
		this.resChildBr = resChildBr;
	}
	public int getResBed() {
		return resBed;
	}
	public void setResBed(int resBed) {
		this.resBed = resBed;
	}
	public int getResTotal() {
		return resTotal;
	}
	public void setResTotal(int resTotal) {
		this.resTotal = resTotal;
	}
	public String getResRequest() {
		return resRequest;
	}
	public void setResRequest(String resRequest) {
		this.resRequest = resRequest;
	}
	
	

}
