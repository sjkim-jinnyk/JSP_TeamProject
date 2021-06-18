<%@page import="com.hotel.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	UserDAO dao = UserDAO.getInstance();
	int result = 0;
	
	String userId = (String)request.getParameter("userId");	// 매개변수로 id가 들어갈 때 string으로 형변환 필요
	result = dao.idCheck(userId);
	
	System.out.println("아이디 체크값 입니다. >>> " + result);
	
	out.println(result);
%>
