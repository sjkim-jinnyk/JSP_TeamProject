package com.hotel.model;

public class RoomDTO {				// 객실 DTO
	private String roomName;		// 객실 이름
	private int roomPrice;			// 가격
	private String roomContent;		// 상세정보
	private String roomImage;		// 이미지 파일명
	private double roomSize;		// 객실 크기(소수점 2자리 까지)
	
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public int getRoomPrice() {
		return roomPrice;
	}
	public void setRoomPrice(int roomPrice) {
		this.roomPrice = roomPrice;
	}
	public String getRoomContent() {
		return roomContent;
	}
	public void setRoomContent(String roomContent) {
		this.roomContent = roomContent;
	}
	public String getRoomImage() {
		return roomImage;
	}
	public void setRoomImage(String roomImage) {
		this.roomImage = roomImage;
	}
	public double getRoomSize() {
		return roomSize;
	}
	public void setRoomSize(double roomSize) {
		this.roomSize = roomSize;
	}
}
