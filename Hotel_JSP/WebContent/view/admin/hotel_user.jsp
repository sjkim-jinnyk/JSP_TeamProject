<%@page import="com.hotel.model.ReserveDAO"%>
<%@page import="com.hotel.model.UserDTO"%>
<%@page import="com.hotel.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userName = request.getParameter("userName").trim();
	String userPhone = request.getParameter("userPhone").trim();

	UserDAO dao = UserDAO.getInstance();
	UserDTO dto = dao.getId(userName, userPhone);
	
	//System.out.println("dto: " + dto.getUserId());
	
	ReserveDAO resdao = ReserveDAO.getInstance();
	String list = resdao.getinfo_id(dto.getUserId());
	
	System.out.println("list: " + list);
	out.println(list);

%>