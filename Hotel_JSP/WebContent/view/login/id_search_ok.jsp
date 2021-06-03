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
	
	<div class="topArea">
		<div class="topInner">
			<h1 class="idSearch_title">아이디 / 비밀번호 찾기</h1>
		</div>
	</div>
	
	<div class="login_inner">
		<div class="textBox">
			<p class="idSearch_coment">아이디를 확인해 주세요.</p>
		 	<p class="idSearch_coment">님의 아이디는 <span class="idInfo">ooo</span>입니다.</p>
		 	
		 	<button type="button" class="confirm_submit" value="확인" onclick="location.href='login.do'">로그인 페이지로 이동</button> 
		</div>
	</div>
		
	<jsp:include page="../../include/footer.jsp" />
		
</body>
</html>