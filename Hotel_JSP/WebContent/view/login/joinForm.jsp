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
		<form method="post" action="<%=request.getContextPath() %>/user_join.do">
			<legend align="center">회원가입</legend>
			
			<ul>
				<li><font size="2" color="red">*필수입력</font></li>
				<br>
				<li>아이디* <input type="text"> <input type="button" value="중복확인" required></li>
				<li>비밀번호* <input type="text" placeholder="영문/숫자/특수문자 포함 6자 이상" required></li>
				<li>비밀번호 확인* <input type="text" placeholder="영문/숫자/특수문자 포함 6자 이상" required></li>
				<li>이   름* <input type="text" required></li>
				<li>성별 <input type="radio" name="gender" value="남자">남자
					   <input type="radio" name="gender" value="여자">여자
				</li>
				<li>이메일 <input type="email"> 
						  <select>
						  		<option value="">::이메일 선택::</option>
						  		<option value="네이버">naver.com</option>
						  		<option value="다음">daum.net</option>
						  		<option value="구글">gmail.com</option>
						  		<option value="한메일">hanmail.net</option>
						  		<option value="네이트">nate.com</option>
						  </select>
				</li>
				<li>전화번호  <select>
								<option value="010">010</option>
								<option value="02">02</option>
								<option value="032">032</option>
								<option value="031">031</option>
							</select>
							<input type="text" size="4" required>
							<input type="text" size="4" required>
				</li>
				<li>
				 주소
				</li>
				
				<hr width="30%">
				<li> <input type="submit" value="가입하기"> &nbsp;
					 <input type="reset" value="취소">
				</li>
			</ul>
		</form>
	</div>
	
</body>
</html>