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
	
	<div>
		<h1 class="sign_title">JOIN NOW</h1>
	</div>
	<br>
	
	<div>
		<form method="post" action="<%=request.getContextPath() %>/user_join_ok.do">
			<input type="hidden" name="userDate" value="sysdate">	<!-- 가입일자 hidden으로 넘겨주기 -->
			
			<ul>
				<li><font size="2" color="red">*필수정보 입력</font></li>
				<br>
				<li>NAME* <input type="text" name="userName" required></li>
				<li>ID* <input type="text" name="userId"> <input type="button" name="userId_check" value="중복확인" required></li>
				<li>PASSWORD* <input type="password" name="userPwd" placeholder="영문/숫자/특수문자 포함 6자 이상" required></li>
				<li>CONFIRM PASSWORD* <input type="password" name="userPwd_check" placeholder="영문/숫자/특수문자 포함 6자 이상" required></li>
				<li>GENDER <input type="radio" name="userGen" value="남성">남성
					  	   <input type="radio" name="userGen" value="여성">여성
				</li>
				<li>PHONE  <!-- <select>
								<option value="010">010</option>
								<option value="02">02</option>
								<option value="032">032</option>
								<option value="031">031</option>
							</select> -->
							<input type="tel" name="userPhone" placeholder="'-'제외하고 입력해주세요.">
				</li>
				<li>ADDRESS <input type="text" name="userAddr"></li>	<!-- 주소 API 받아오는 작업 미완성! -->
				<li>E-MAIL <input type="text" name="userEmail_1" placeholder="이메일 입력해주세요.">		
						   <span>@</span>
						   <select name="userEmail_2">
						  		<option value="" disabled selected>::E-Mail 선택::</option>
						  		<option value="naver">naver.com</option>
						  		<option value="daum">daum.net</option>
						  		<option value="gmial">gmail.com</option>
						  		<option value="hamail">hanmail.net</option>
						  		<option value="nate">nate.com</option>
						   </select>
				</li>
				<li>POINT <input type="text" name="userPoint">p</li>   <!-- ★String으로 받아오는지? -->
				<br>
				<li> <input type="submit" value="회원가입"> &nbsp;
					 <input type="reset" value="취소">
				</li>
			</ul>
		</form>
	</div>
	
	<jsp:include page="../../include/footer.jsp" />
	
</body>
</html>