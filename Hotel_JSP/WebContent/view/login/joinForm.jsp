<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.hotel.model.UserDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
	  
	<!-- 회원가입 폼 css -->
	<link rel="stylesheet" href="css/LoginStyle.css">
	
	<!-- header 영역 -->
	<jsp:include page="../../include/header.jsp" />
	
	<!-- 본문 시작 -->
	<div class="join_inner">
		<div class="joinBox">
		 	<h1 class="join_title">join now</h1>
		</div>
		
		<div class="joinInfo">
		<form method="post" action="<%=request.getContextPath() %>/user_join_ok.do" name="join">
			
					
			<ul>      
				<li><font size="2" color="red">*필수정보 입력</font></li>
				<br>
				<li>ID* <br><input type="text" id="id_txt" class="joinTxt" name="userId" placeholder="아이디"> 
						<input type="button" class="joinFormBtn" name="userId_check" value="중복확인" onclick="idCheck()" required>
				</li>
				<li>PASSWORD* <br><input type="password" class="joinTxt" name="userPwd" id="userPwd" maxlength="14" onchange="pwd_check()" placeholder="영문/숫자 포함 15자 미만" required></li>
				<li>
					CONFIRM PASSWORD* <br><input type="password" class="joinTxt" name="userPwd_check" id="userPwd_check" maxlength="14" onchange="pwd_check()" placeholder="영문/숫자 포함 15자 미만" required>
					&nbsp;<span id="check">비밀번호를 확인해주세요.</span>
				</li>
				<li>NAME* <br>
				<input type="text" class="joinTxt" name="userName" placeholder="이름" required></li>
				<div class="checks">
				<li class="margin-gen">GENDER </li><input type="radio" name="userGen" value="남성"><span>남성</span>
					  	   <input type="radio" class="UserGen" name="userGen" value="여성"><span>여성</span>
				</div>
				<li>PHONE <br><input type="tel" class="joinTxt" name="userPhone" placeholder="'-'제외하고 입력해주세요.">
				</li>
				<li>ADDRESS <br>
					<input type="text" class="joinTxt" id="sample4_postcode" placeholder="우편번호">
					<input type="button" class="joinFormBtn" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" class="joinTxt" id="sample4_roadAddress" name="userAddr_1" placeholder="도로명주소">
					<input type="text" class="joinTxt" id="sample4_jibunAddress" name="userAddr_2" placeholder="지번주소">
					<span id="guide" style="color:#999;display:none"></span>
					<input type="text" class="joinTxt" id="sample4_detailAddress" name="userAddr_3" placeholder="상세주소">
					<input type="text" class="joinTxt" id="sample4_extraAddress" name="userAddr_4" placeholder="참고항목">
				</li>
				<li>E-MAIL <br><input type="text" class="joinTxt" name="userEmail_1" onfocus="this.value='';" placeholder="이메일 입력해주세요.">		
						   <span>@</span>
						   <input type="text" class="joinTxt" name="userEmail_2" value="" readonly>
						   <select name="userEmail" class="select-box" onchange="email_change()">
						  		<option value="0" selected>E-Mail 선택</option>	
						  		<option value="naver.com">naver.com</option>
						  		<option value="gmail.com">gmail.com</option>
						  		<option value="hamail.net">hanmail.net</option>
						  		<option value="nate.con">nate.com</option>
						  		<option value="1">직접입력</option>
						   </select>
				</li>
			</ul>
			<br>
			
			<div class="join-submit">
					<input type="reset" class="join_submit_no" value="취소">  &nbsp;
					<input type="submit" class="join_submit" value="회원가입">
			</div>
		</form>
	</div>
	
	</div>
	
	<!-- 주소 API 파일 로딩  -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	<!-- 회원가입 폼 스크립트 -->
	<script type="text/javascript" src="js/joinPage.js"></script>
	
	<!-- footer 영역 -->
	<jsp:include page="../../include/footer.jsp" />
	
	
</body>
</html>