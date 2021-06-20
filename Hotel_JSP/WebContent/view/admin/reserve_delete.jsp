<%@page import="com.hotel.model.ReserveDAO"%>
<%@page import="com.hotel.model.UserDTO"%>
<%@page import="com.hotel.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num = Integer.parseInt(request.getParameter("num").trim());
	
	ReserveDAO resdao = ReserveDAO.getInstance();
	int del = resdao.reserveDelete(num);
	System.out.println("list:" + del);
	out.println(del);
%>