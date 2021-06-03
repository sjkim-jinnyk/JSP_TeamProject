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
		<form method="post" action="<%=request.getContextPath() %>/user_id_search_ok.do">
			<ul class="login_form">
				<li class="idSearch_on">
				<a href="<%=request.getContextPath() %>/user_id_search.do">아이디 찾기</a>
				</li>
			</ul>
			<ul class="login_form">
				<li class="idSearch_on">
				<a href="<%=request.getContextPath() %>/user_pwd_search.do">비밀번호 찾기</a>
				</li>
			</ul>
			
			<div class="loginBox">
				<div class="userLogin">
					<p class="id_form">
						<label class="hidden">
							이름
						</label>
						<input type="text" name="userName" placeholder="이름" required>
					</p>
					<p class="id_form">
						<label class="hidden">
							휴대폰 번호
						</label>
						<input type="tel" name="userPhone" placeholder="휴대폰 번호" required>
					</p>
					
					<!-- onclick 속성으로 값 넘겨주는 기능 구현X -->
					<input type="submit" value="찾 기">
					<!--  <button type="button" class="login_submit" value="아이디찾기" onclick="location.href='id_search_ok.do'">찾 기</button> --> 
				</div>
			</div>
		</form>
	</div>

	<jsp:include page="../../include/footer.jsp" />
	
</body>

</html>