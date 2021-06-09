<%@page import="com.hotel.model.ReserveDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String roomName = request.getParameter("room_name").trim();
	String today = request.getParameter("today").trim();
	
	
	ReserveDAO dao = ReserveDAO.getInstance();
	String roomNo = dao.getRoomNumber(roomName, today);
			
	out.println(roomNo);

%>