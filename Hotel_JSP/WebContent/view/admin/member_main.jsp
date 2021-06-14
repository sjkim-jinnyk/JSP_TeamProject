<%@page import="com.hotel.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	UserDAO dao = UserDAO.getInstance();
	String list = dao.getMemberList();
	System.out.println("mem :  " + list);
	out.println(list);
%>
