<%@page import="com.hotel.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	UserDAO dao = UserDAO.getInstance();
	String list = dao.getMemberList();
	out.println(list);
%>
