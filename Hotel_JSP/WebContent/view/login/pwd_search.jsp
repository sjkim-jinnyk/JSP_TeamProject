<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
		<h3>아이디 / 비밀번호 찾기</h3>
		
		<form method="post" action="<%=request.getContextPath() %>/user_pwd_search_ok.do">
			<ul>
				<li><a href="<%=request.getContextPath() %>/user_id_search.do">아이디 찾기</a></li>
				<li><a href="<%=request.getContextPath() %>/user_pwd_search.do">비밀번호 찾기</a></li>
			</ul>
			
			<p>
				<label>아이디</label> 
				<input id="user_id" name="user_id" placeholder="아이디" aria-required="true" />
			</p>
			
			<p>
				<label>이름</label> 
				<input id="user_name" name="user_name" placeholder="이름" aria-required="true" />
			</p>
			
			<p>
				<input type="submit" value="찾기">
			</p>
		</form>
	</div>

</body>
</html>