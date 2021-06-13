<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
</head>
<body>

	<link rel="stylesheet" href="css/MypageStyle.css">
	
	<jsp:include page="../../include/header.jsp" />

	<div class="myPage_header">
		<div>
			<h1 class="header_title">MY PAGE</h1>
			<p class="header_txt">멤버십 회원을 위한 다양한 혜택이 준비되어 있습니다.</p>
		</div>
	</div>
		
	<div class="myPage">
		<div class="myPage_inner">
			<div class="innerBox">
				<h3 class="inner_menu">예약확인</h3>
        		<ul class="menu_list">
            		<li class="munu_content"><a href="<%=request.getContextPath() %>/res_list.do" class="res">예약내역</a></li>
            		<li class="munu_content"><a href="<%=request.getContextPath() %>/res_change.do" class="res_change">예약변경</a></li>
        		</ul>
        
        		<h3 class="inner_menu">개인정보관리</h3>
        		<ul class="menu_list">
            		<li class="munu_content"><a href="<%=request.getContextPath() %>/info_update.do" class="login">회원 정보 수정</a></li>
            		<li class="munu_content"><a href="<%=request.getContextPath() %>/info_del.do" class="join">회원탈퇴</a></li>
        		</ul>
        	</div>
        </div>
        
        <div class="myPage_box">
			<p class="headline">개인정보관리</p>
			<div>
				<ul class="myPage_container">
					<li class="resListChg_on"><a href="<%=request.getContextPath() %>/info_update.do">회원 정보 수정</a></li>
					<li class="resListChg_off"><a href="<%=request.getContextPath() %>/info_del.do">회원탈퇴</a></li>
				</ul>
			</div>
			
			<!-- 본문 시작 -->
			<div>
			<form method="post" action="info_update_ok.do">
				<c:set var="dto" value="${userCont }" />
				<div>
					<ul>
						<li>MY INFORMATION</li>
						<li>ID <br><input type="text" id="id_txt" class="joinTxt" name="userId" value="${dto.getUserId() }" readonly></li>
						<li>NAME <br><input type="text" class="joinTxt" name="userName" value="${dto.getUserName() }" readonly></li>
						<div class="checks">
						<li class="margin-gen">GENDER </li>
							 <input type="radio" name="userGen" value="남성"><span>남성</span>
					  	  	 <input type="radio" class="UserGen" name="userGen" value="여성"><span>여성</span>
						</div>
						<li>PHONE <br><input type="tel" class="joinTxt" name="userPhone" value="${dto.getUserPhone() }"></li>
						<li>ADDRESS <br>
							<input type="text" class="joinTxt" id="sample4_postcode" >
							<input type="button" class="joinFormBtn" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
							<input type="text" class="joinTxt" id="sample4_roadAddress" name="userAddr_1">
							<input type="text" class="joinTxt" id="sample4_jibunAddress" name="userAddr_2">
							<span id="guide" style="color:#999;display:none"></span>
							<input type="text" class="joinTxt" id="sample4_detailAddress" name="userAddr_3">
							<input type="text" class="joinTxt" id="sample4_extraAddress" name="userAddr_4">
						</li>
						<li>E-MAIL <br><input type="text" class="joinTxt" name="userEmail_1" onfocus="this.value='';">		
						   <span>@</span>
						   <input type="text" class="joinTxt" name="userEmail_2" value="" readonly>
						   <select name="userEmail" class="select-box" onchange="email_change()">
						  		<option value="0" selected>E-Mail 선택</option>	<!-- ★ 옵션 선택시 값이 서블릿에 안 넘어감(직접입력은 됨) -->
						  		<option value="naver.com">naver.com</option>
						  		<option value="gmail.com">gmail.com</option>
						  		<option value="hamail.net">hanmail.net</option>
						  		<option value="nate.con">nate.com</option>
						  		<option value="1">직접입력</option>
						   </select>
						</li>
						<li>
							POINT <br><input type="text" class="joinTxt" name="userPoint" value="${dto.getUserPoint() }">p
						</li>
					</ul>
				</div>
			</form>
		  </div>			
		</div>
	</div>
	
    <jsp:include page="../../include/footer.jsp" />

</body>
</html>