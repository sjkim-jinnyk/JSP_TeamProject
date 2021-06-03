<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="../../include/header.jsp" />
	
	<div align="center">
		<h3>아이디 / 비밀번호 찾기</h3>
		
		<form method="post" action="<%=request.getContextPath() %>/user_id_search_ok.do">
			<ul>
				<li><a href="<%=request.getContextPath() %>/user_id_search.do">아이디 찾기</a></li>
				<li><a href="<%=request.getContextPath() %>/user_pwd_search.do">비밀번호 찾기</a></li>
			</ul>
			
			<p>
				<label>이름</label> 
				<input id="user_name" name="user_name" placeholder="이름" aria-required="true" />
			</p>
			
			<p>
				<label>휴대폰 번호</label> 
				<input id="user_phone" name="user_phone" placeholder="휴대폰 번호" aria-required="true" />
			</p>
			
			<p>
				<input type="submit" value="찾기">
			</p>
			
			
		</form>
	</div>

</body>

</html>