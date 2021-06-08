<%@page import="com.hotel.model.ReserveDAO"%>
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
	String list = dao.getInfo(roomName, checkIn, checkOut);
	
	//out.println(list);
%>