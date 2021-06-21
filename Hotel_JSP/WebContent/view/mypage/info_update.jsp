<%@page import="com.hotel.model.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>

	<link rel="stylesheet" href="css/MypageStyle.css">
	
	<jsp:include page="../../include/header.jsp" />

	<div class="myPage_header">
		<div>
			<h1 class="header_title">My Page</h1>
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
            		<li class="munu_content"><a href="<%=request.getContextPath() %>/pwd_update.do" class="login">비밀번호 수정</a></li>
            		<li class="munu_content"><a href="<%=request.getContextPath() %>/info_del.do" class="join">회원탈퇴</a></li>
        		</ul>
        	</div>
        </div>
        
        <div class="myPage_box">
        	<div class="myPage_box_inner">
				<p class="headline">개인정보관리</p>
				<div>
					<ul class="myPage_container">
						<li class="resListChg_on"><a href="<%=request.getContextPath() %>/info_update.do">회원 정보 수정</a></li>
						<li class="resListChg_off"><a href="<%=request.getContextPath() %>/pwd_update.do">비밀번호 수정</a></li>
						<li class="resListChg_off"><a href="<%=request.getContextPath() %>/info_del.do">회원탈퇴</a></li>
					</ul>
				</div>
			
				<!-- 본문 시작 -->
				<div>
					<form method="post" action="<%=request.getContextPath() %>/info_update_ok.do" name="join">
						<c:set var="dto" value="${userCont }" />
						<div class="myInfo">
							<ul>
								<li>ID <br><input type="text" id="id_txt" class="chgTxt_no" name="userId" value="${dto.getUserId() }" readonly></li>
								<li>NAME <br><input type="text" class="chgTxt_no" name="userName" value="${dto.getUserName() }" readonly></li>
								<div class="checks">
								<li class="margin-gen">GENDER<br>
									<div class="genBox">
										<!-- 남성인 경우 -->
										<c:if test="${dto.getUserGen() == '남성' }">
											<input type="radio" name="userGen" value="남성" checked disabled><span>남성</span>
											<input type="radio" class="UserGen" name="userGen" value="여성" disabled><span>여성</span>
										</c:if>
										<!-- 여성인 경우 -->
										<c:if test="${dto.getUserGen() == '여성' }">
											<input type="radio" name="userGen" value="남성" disabled><span>남성</span>
											<input type="radio" class="UserGen" name="userGen" value="여성" checked disabled><span>여성</span>
										</c:if>
									</div>
								</li>
								</div>
								<li>PHONE <br><input type="tel" class="chgTxt" name="userPhone" value="${dto.getUserPhone() }"></li>
								<li>ADDRESS <br>
									<p class="addrChg">* CURRENT ADDRESS</p>
									<!-- 디비에 저장된 주소 -->
									<input type="text" class="DBaddr" name="DBaddr" value="${dto.getUserAddr() }" readonly><br>
									<!-- 수정할 주소 -->
									<span class="addrChg">* NEW ADDRESS</span><br>
									<input type="text" class="chgTxt" id="sample4_postcode" placeholder="우편번호">
									<input type="button" class="addrSearch_Btn" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
									<input type="text" class="chgTxt" id="sample4_roadAddress" name="userAddr_1" placeholder="도로명주소">
									<input type="text" class="chgTxt" id="sample4_jibunAddress" name="userAddr_2" placeholder="지번주소">
									<span id="guide" style="color:#999;display:none"></span>
									<input type="text" class="chgTxt" id="sample4_detailAddress" name="userAddr_3" placeholder="상세주소">
									<input type="text" class="chgTxt" id="sample4_extraAddress" name="userAddr_4" placeholder="참고항목">
								</li>
								<li>E-MAIL<br>
								   <input type="text" class="chgTxt" id="userEmail_1" name="userEmail_1" onfocus="this.value='';" value="${dto.getUserEmail() }" >		
								   <span>@</span>
								   <input type="text" class="chgTxt" id="userEmail_2" name="userEmail_2" value="" readonly>
								   <select name="userEmail" class="select-box" onchange="email_change()">
								  		<option value="0" selected>E-Mail 선택</option>	
								  		<option value="naver.com">naver.com</option>
								  		<option value="gmail.com">gmail.com</option>
								  		<option value="hamail.net">hanmail.net</option>
								  		<option value="nate.con">nate.com</option>
								  		<option value="1">직접입력</option>
								   </select>
								</li>
								<li>
									POINT <br><input type="text" class="chgTxt_no" name="userPoint" value="${dto.getUserPoint() }" readonly>p
								</li>
							</ul>
							<div class="infoChg_btn">
								<input type="reset" class="reset_btn" value="취소하기">&nbsp;&nbsp;
								<input type="submit" class="submit_btn" value="수정하기">
							</div>
						</div>
					</form>
			  	</div>	
		  	</div>		
		</div>
	</div>
	
	<!-- 주소 API 파일 로딩  -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	<!-- 마이페이지 스크립트 가져오기-->
	<script type="text/javascript" src="js/myPage_infoUpdate.js"></script>
	<!-- 다음주소 스크립트 가져오기-->
	<script type="text/javascript" src="js/joinPage.js"></script>
	
    <jsp:include page="../../include/footer.jsp" />

</body>
</html>