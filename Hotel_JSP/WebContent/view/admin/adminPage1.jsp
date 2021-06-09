<%@page import="com.hotel.model.ReserveDAO"%>
<%@page import="com.hotel.model.ReserveDTO"%>
<%@page import="com.hotel.model.RoomDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.hotel.model.RoomDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String roomName = request.getParameter("roomName").trim();
	String checkIn = request.getParameter("checkIn").trim();	
	String checkOut = request.getParameter("checkOut").trim();	
	String search_room = "";
	String room_image = "";
	String room_content = "";
	double room_size = 0;
	int room_price = 0;
	
	ReserveDAO dao = ReserveDAO.getInstance();
	List<ReserveDTO> list = dao.getInfo(roomName, checkIn, checkOut);
	
	// request.setAttribute("list", list);
	
 	for(int i=0; i<list.size(); i++) {
		search_room = list.get(i).getRoomName();
	} 
	System.out.println("name : " + search_room);
	RoomDAO listdao = RoomDAO.getInstance();
	String room_detail = listdao.getRoomDetail(search_room);
	
/* 	for(int i=0; i<room_detail.size(); i++) {
		room_image = room_detail.get(i).getRoomImage();
		room_size = room_detail.get(i).getRoomSize();
		room_price = room_detail.get(i).getRoomPrice();
	} */

	out.println(room_detail);

%>
