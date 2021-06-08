<%@page import="java.util.List"%>
<%@page import="com.hotel.model.ReserveDAO"%>
<%@page import="com.hotel.model.ReserveDTO"%>
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
	String add_test = "";
	
	ReserveDAO dao = ReserveDAO.getInstance();
	add_test = dao.getinfo_html(roomName, checkIn, checkOut);
	
	out.println(add_test);
	
%>