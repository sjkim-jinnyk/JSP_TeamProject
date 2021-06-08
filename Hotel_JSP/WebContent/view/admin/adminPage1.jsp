<%@page import="com.hotel.model.ReserveDTO"%>
<%@page import="com.hotel.model.RoomDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.hotel.model.RoomDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	
	List<ReserveDTO> list = (List<ReserveDTO>)request.getAttribute("list"); 

%>
