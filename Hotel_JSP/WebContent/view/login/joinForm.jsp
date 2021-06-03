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
	
	<div>
		<form method="post" action="<%=request.getContextPath() %>/user_join.do">
			<ul>
				<li><font size="2" color="red">*필수정보 입력</font></li>
				<br>
				<li>NAME* <input type="text" required></li>
				<li>ID* <input type="text"> <input type="button" value="중복확인" required></li>
				<li>PASSWORD* <input type="password" placeholder="영문/숫자/특수문자 포함 6자 이상" required></li>
				<li>CONFIRM PASSWORD* <input type="password" placeholder="영문/숫자/특수문자 포함 6자 이상" required></li>
				<li>GENDER <input type="radio" name="gender_man" value="남성">남성
					  	   <input type="radio" name="gender_woman" value="여성">여성
				</li>
				<li>EMAIL <input type="email"> 
						  <select>
						  		<option value="">::이메일 선택::</option>
						  		<option value="네이버">naver.com</option>
						  		<option value="다음">daum.net</option>
						  		<option value="구글">gmail.com</option>
						  		<option value="한메일">hanmail.net</option>
						  		<option value="네이트">nate.com</option>
						  </select>
				</li>
				<li>PHONE  <select>
								<option value="010">010</option>
								<option value="02">02</option>
								<option value="032">032</option>
								<option value="031">031</option>
							</select>
							<input type="text" size="4" required>
							<input type="text" size="4" required>
				</li>
				<li>
				 ADDRESS
				</li>
				
				<li> <input type="submit" value="가입하기"> &nbsp;
					 <input type="reset" value="취소">
				</li>
			</ul>
		</form>
	</div>
	
	<jsp:include page="../../include/footer.jsp" />
	
</body>
</html>