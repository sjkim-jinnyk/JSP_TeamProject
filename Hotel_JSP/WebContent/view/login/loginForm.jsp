<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>로그인 페이지 입니다.</h3>
	
	<div>
		<a href="<%=request.getContextPath() %>/user_login.do">회원 로그인</a>
		<br> <br>
		
		<a href="<%=request.getContextPath() %>/user_id_search.do">아이디 찾기</a>
		<a href="<%=request.getContextPath() %>/user_pwd_search.do">비밀번호 찾기</a>
		<br> <br> <br>
		
		<a href="<%=request.getContextPath() %>/admin_login_ok.do">관리자 로그인</a>
		
	</div>

</body>
</html>