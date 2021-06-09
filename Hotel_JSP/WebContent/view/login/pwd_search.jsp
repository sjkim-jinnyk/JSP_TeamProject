<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
</head>
<body>

<link rel="stylesheet" href="css/LoginStyle.css">
	<jsp:include page="../../include/header.jsp" />
	
	<div class="topArea">
		<div class="topInner">
			<h1 class="idSearch_title">아이디 / 비밀번호 찾기</h1>
		</div>
	</div>

	<div class="idPwdSearch_inner">
		<form method="post" action="<%=request.getContextPath() %>/user_pwd_search_ok.do">
			<ul class="login_form" style="display: flex;">
				<li class="idPwdSearch_off">
				<a href="<%=request.getContextPath() %>/user_id_search.do">아이디 찾기</a>
				</li>
				<li class="idPwdSearch_on">
				<a href="<%=request.getContextPath() %>/user_pwd_search.do">비밀번호 찾기</a>
				</li>
			</ul>
			
			<div class="loginBox">
				<div class="userLogin">
					<p class="id_form">
						<label class="hidden">
							아이디
						</label>
						<input type="text" name="userId" placeholder="아이디" required>
					</p>
					<p class="id_form">
						<label class="hidden">
							이름
						</label>
						<input type="text" name="userName" placeholder="이름" required>
					</p>

					<input type="submit" value="찾 기" class="login_submit">
				</div>
			</div>
		</form>
	</div>

	<jsp:include page="../../include/footer.jsp" />

</body>
</html>