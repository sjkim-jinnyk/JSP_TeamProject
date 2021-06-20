<%@page import="com.hotel.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String memID = request.getParameter("memid").trim();
	String memphone = request.getParameter("memphone").trim();
	UserDAO dao = UserDAO.getInstance();
	int list = dao.memberDelete(memID, memphone);
	out.println(list);
%>
    