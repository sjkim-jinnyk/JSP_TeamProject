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
	
	ReserveDAO dao = ReserveDAO.getInstance();
	String list = dao.getinfo_html(roomName, checkIn, checkOut);
	
	out.println(list);

%>
