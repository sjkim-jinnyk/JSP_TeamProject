package com.hotel.model;

public class RoomNumberDTO { // 객실 번호 DTO

	private String roomName;   // 객실 이름
	private int roomNumber;    // 객실 번호
	
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
	
	
}
