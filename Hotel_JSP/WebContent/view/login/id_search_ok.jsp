<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기 확인</title>

<link rel="stylesheet" href="css/LoginStyle.css">
	<jsp:include page="../../include/header.jsp" />
	
	<div class="topArea">
		<div class="topInner">
			<h1 class="idSearch_title">아이디 / 비밀번호 찾기</h1>
		</div>
	</div>
	
	<div class="idPwdSearch_inner">
		<div class="textBox">
			<c:set var="idInfo" value="${idInfo }" />
			<c:set var="userName" value="${userName }" />
			<p class="idSearch_coment">아이디를 확인해 주세요.</p>
		 	<p class="idSearch_coment">${userName }님의 아이디는 <span class="idInfo">${idInfo }</span>입니다.</p>
		 	
		 	<button type="button" class="confirm_submit" value="확인" onclick="location.href='login.do'">로그인 페이지로 이동</button> 
		</div>
	</div>
		
	<jsp:include page="../../include/footer.jsp" />
		
</body>
</html>