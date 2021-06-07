<%@page import="com.hotel.model.RoomDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String roomName = request.getParameter("roomName").trim();
	
	System.out.println(roomName);
	
	

	RoomDAO dao = RoomDAO.getInstance();
	
	System.out.println(dao);
	
	int res = dao.checkRoom(roomName);
	
	System.out.println(res);
	
	out.println(res);

%>
