<%@page import="com.hotel.model.RoomDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String roomName = request.getParameter("roomName").trim();
	String checkIn = request.getParameter("checkIn").trim();	
	String checkOut = request.getParameter("checkOut").trim();	
	
	RoomDAO dao = RoomDAO.getInstance();
	String roomDetail = dao.getRoomDetail(roomName);
	out.println(roomDetail);
	
%>