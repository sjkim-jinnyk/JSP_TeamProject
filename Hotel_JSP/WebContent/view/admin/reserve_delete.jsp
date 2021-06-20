<%@page import="com.hotel.model.ReserveDAO"%>
<%@page import="com.hotel.model.UserDTO"%>
<%@page import="com.hotel.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	int num = Integer.parseInt(request.getParameter("num").trim());
	String userName = request.getParameter("userName").trim();
	String userPhone = request.getParameter("userPhone").trim();
	
	UserDAO dao = UserDAO.getInstance();
	UserDTO dto = dao.getId(userName, userPhone);
	System.out.println("userId " + dto.getUserId());
	
	ReserveDAO resdao = ReserveDAO.getInstance();
	int del = resdao.reserveDelete(dto.getUserId(), num);
	System.out.println("list:" + del);
	out.println(del);
%>