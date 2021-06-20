<%@page import="com.hotel.model.ReserveDAO"%>
<%@page import="java.util.List"%>
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
