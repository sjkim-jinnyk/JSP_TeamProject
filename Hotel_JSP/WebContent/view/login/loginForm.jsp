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
		
		<form method="post" action="<%=request.getContextPath() %>/user_login_ok.do">
			<table border="1" cellspacing="0" width="20%">
				<tr>
					<td>ID &nbsp;&nbsp;&nbsp;&nbsp;: <input id="user_id" name="user_id"></td>
				</tr>
				<tr>
					<td>PWD : <input id="user_pwd" name="user_pwd"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="로그인">
					</td>
				</tr>
			</table>
		</form>

		<a href="<%=request.getContextPath() %>/user_id_search.do">아이디 찾기</a>
		<a href="<%=request.getContextPath() %>/user_pwd_search.do">비밀번호 찾기</a>
		<br> <br> <br>
		
		<a href="<%=request.getContextPath() %>/admin_login_ok.do">관리자 로그인</a>
	</div>

</body>
</html>