<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약변경</title>
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
            		<li class="menu_content"><a href="<%=request.getContextPath() %>/res_list.do" class="res">예약내역</a></li>
            		<li class="menu_content"><a href="<%=request.getContextPath() %>/res_change.do" class="res_change">예약변경</a></li>
        		</ul>
        
        		<h3 class="inner_menu">개인정보관리</h3>
        		<ul class="menu_list">
            		<li class="menu_content"><a href="<%=request.getContextPath() %>/info_update.do" class="login">회원 정보 수정</a></li>
            		<li class="munu_content"><a href="<%=request.getContextPath() %>/pwd_update.do" class="login">비밀번호 수정</a></li>
            		<li class="menu_content"><a href="<%=request.getContextPath() %>/info_del.do" class="join">회원탈퇴</a></li>
        		</ul>
        	</div>
        </div>
        
        <div class="myPage_box">
        <div class="myPage_box_inner">
        <form method="post" action="<%=request.getContextPath() %>/res_change_check.do">
        	<c:set var="dto" value="${resCont }" />
        	<c:set var="dto2" value="${roomCont }" />
        	<!-- 예약번호 히든값으로 넘기기 -->
        	<input type="hidden" name="resNo" value="${dto.getResNo() }">
			<c:if test="${!empty dto }">
				<div class="resList_box">
						<p class="resInfo_title">예약 정보</p>
						<div class="resInfo_inner">
							<div class="room_img">
								<img alt="상품" src="image/${dto2.getRoomImage() }.jpeg" style="width: 250px; height: 168px; display: block">
							</div>	
							<div class="res_container2">
								<span class="res_block">
									예약번호 ${dto.getResNo() } | RESERVED<br>
									${dto.getResIn() } - ${dto.getResOut() } (${dto.getResNod() }박)<br>
									${dto.getRoomName() } / ${dto.getRoomNumber() }호 / ${dto2.getRoomSize() }㎡
								</span>
							</div>
						</div>
				</div>
				
				<div class="resList_box2">
				<p class="resInfo_title">객실 상세 내역</p>
				<ul class="resInfo_inner">
					<li>
						<div class="box_inner">
							성인<input type="number" class="boxCSS" name="adult" min="1" max="3" value="${dto.getResAdult() }">
							성인 조식<input type="number" class="boxCSS" name="child" min="0" max="3" value="${dto.getResChild() }">
							어린이<input type="number" class="boxCSS" name="adultBr" min="0" max="2" value="${dto.getResAdultBr() }">
							어린이 조식<input type="number" class="boxCSS" name="childBr" min="0" max="2" value="${dto.getResAdultBr() }">
							엑스트라 베드<input type="number" class="boxCSS" name="extraBed" min="0" max="2" value="${dto.getResBed() }">
						</div>
						<div class="box_inner2">
							요청사항<br><textarea rows="3" cols="100%" class="request_box" name="requests">${dto.getResRequest() }</textarea>
						</div>
						<div class="resPrice_box">
							<div class="resPrice_inner">
								<dl class="resPrice_list">
									<dt class="price_title">객실 금액</dt>
									<dd>
										<ul class="infoData">
											<li>
												<span class="data1">${dto.getResDate().substring(0,10) }</span>
												<span class="data2"><fmt:formatNumber value="${dto2.getRoomPrice() }" />(원)</span>
											</li>
										</ul>
									</dd>
								</dl>
								<dl class="resPrice_list">
									<dt class="price_title">옵션 금액</dt>
									<dd>
										<ul class="infoData">
											<li>
												<span class="data1">옵션 추가</span>
												<span class="data2">(원)</span>
											</li>
										</ul>
									</dd>
								</dl>
								<dl class="resPrice_list">
									<dt class="price_title">세금 및 봉사료</dt>
									<dd>
										<ul class="infoData">
											<li>
												<span class="data1">세금 (10%)</span>
												<span class="data2">
													<fmt:formatNumber value="${dto2.getRoomPrice() * 0.1 }" />(원)
												</span>
											</li>
										</ul>
									</dd>
								</dl>
							</div>
						</div>
						<div class="box_inner3">
							<ul>
								<li><span class="price_title">총 예약금액</span></li>
								<li class="total_price"><fmt:formatNumber value="${dto.getResTotal() }" />KRW</li>
							</ul>
						</div>
						<div class="box_inner4">
							<input type="submit" class="submit_btn" value="변경하기">&nbsp;&nbsp;&nbsp;
							<input type="submit" class="reset_btn" value="취소하기">
						</div>
					</li>
				</ul>
				</div>
			</c:if>
		</form>
		</div>
		</div>
	</div>
	
	<script type="text/javascript" src="js/myPage.js"></script>
	
    <jsp:include page="../../include/footer.jsp" />

</body>
</html>