<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>

	<link rel="stylesheet" href="css/LoginStyle.css">
	<jsp:include page="../../include/header.jsp" />
	
	<div class="topArea">
		<div class="topInner">
			<h1 class="sign_title">Sign In</h1>
			<p class="sign_guide">머무는 모든 순간이 특별해집니다.</p>
		</div>
	</div>
	
	<div class="login_inner">
		<form method="post" action="<%=request.getContextPath() %>/user_login_ok.do">
			
			<!-- 아이디 저장 히든 값 -->
			<input type="hidden" name="id_save_int" id="id_save_int" value="0">
			
			<ul class="login_form">
				<li class="login_on">
				아이디 로그인	
				</li>
			</ul>
			
			<div class="loginBox">
				<div class="userLogin">
					<p class="id_form">
						<label class="hidden">
							아이디
						</label>
						<input type="text" name="userId" id="userId" placeholder="아이디" required>
					</p>
					<p class="pw_form">
						<label class="hidden">
							비밀번호
						</label>
						<input type="password" name="userPwd" placeholder="비밀번호" required onkeydown="javascript:if(event.keyCode == 13){console.log(입력)};">
					</p>
					<span class="id_save">
						<input type="checkbox" id="idSaveCheck">
						<label for="idSaveCheck" id="id_save"></label>
						<span class="id_save_s">아이디 저장</span>
					</span>

					<input type="submit" class="login_submit" value="로그인">
				</div>
			</div>
			
		<div class="login_Link">
			<a href="<%=request.getContextPath() %>/join.do" class="id_pw_search">회원가입 ></a>
			<a href="<%=request.getContextPath() %>/user_id_search.do" class="id_pw_search">아이디 / 비밀번호 찾기 ></a>
		</div>
		
		<ul class="txtGuide">
			<li>이용자 비밀번호 5회 연속 오류시 계정이 잠기게 됩니다.</li>
			<li>아이디가 없으신 경우 회원가입을 부탁드립니다.</li>
		</ul>
		
		
		<!-- <a href="<%=request.getContextPath() %>/admin_login_ok.do">관리자 로그인</a> -->
		
	  </form>
	</div>
	
	<!-- 아이디 저장 히든 값 스크립트 -->
	<script>
		let userId_get = "<%=(String)session.getAttribute("user_save") %>"
		
		if(userId_get == "null"){
			
		}
		else if(userId_get != null){
			$("#userId").val(userId_get);
		}
	</script>
	
	<!-- 로그인 스크립트 -->
	<script type="text/javascript" src="js/loginPage.js"></script>
	
	<!-- 푸터 -->
	<jsp:include page="../../include/footer.jsp" />

</body>
</html>