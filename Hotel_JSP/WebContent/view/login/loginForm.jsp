<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- header 영역  -->
	
	<div align="center">
		<h1>SIGN IN</h1>
		<p>머무는 모든 순간이 특별해집니다.</p>

		<form method="post" action="<%=request.getContextPath() %>/user_login.do">
			<p>
				<label>아이디</label> 
				<input id="user_id" name="user_id" placeholder="아이디" aria-required="true" />
			</p>
			
			<p>
				<label>비밀번호</label> 
				<input id="user_pwd" name="user_pwd" placeholder="비밀번호" aria-required="true" />
			</p>
			
			<p>
				<input type="submit" value="로그인">
			</p>
		</form>
	</div>
	
	<div align="center">
		<a href="<%=request.getContextPath() %>/join.do">회원가입 ></a>
		<a href="<%=request.getContextPath() %>/user_id_search.do">아이디/비밀번호 찾기 ></a>
		<br><br><br>
		
		<a href="<%=request.getContextPath() %>/admin_login_ok.do">관리자 로그인</a>
	</div>

</body>
</html>