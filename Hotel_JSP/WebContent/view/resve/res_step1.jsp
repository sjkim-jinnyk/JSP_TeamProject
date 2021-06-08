<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 예약 - 객실, 요금 선택 | 조선호텔앤리조트</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
	    $("#rsv_toggle_btn").click(function() {
	        $("#toggleCont").toggle(); 
	    });
	});
</script>
</head>
<body>
	
	<jsp:include page="../../include/header.jsp" />
	
	<form name="step1Form" id="step1Form" method="post" 
		action='<%=request.getContextPath()%>/step2.do'>
	 
		<div class="topArea">
			<div class="topInner">
				<h2 class="titDep1">Booking</h2>
				<div class="stepWrap">
					<ol>
						<li class="on">
							 객실, 요금 선택
						</li>
						<li></li>
						<li></li>
						
					</ol>
				</div>
			</div>
		</div>
		<!-- //topArea -->
		<div class="selResult">
			<div class="inner">
				<div class="infoArea">
					<dl class="date">
						<dt>DATE</dt>
						<dd id="dateText"><%=request.getAttribute("resIn") %>&nbsp;금&nbsp; <!-- 요일 뽑아와야함.. -->
							-&nbsp;<%=request.getAttribute("resOut") %>&nbsp;토<span>1&nbsp;박</span></dd>
					</dl>
					<dl class="adults">
						<dt>ADULTS</dt>
						<dd><%=request.getAttribute("resAdult") %></dd>
					</dl>
					<dl class="children">
						<dt>CHILDREN</dt>
						<dd><%=request.getAttribute("resChild") %></dd>
					</dl>
				</div>
				<a href="#" class="back_btn" onclick="history.back()">객실 다시 검색</a>
			</div>
		</div>
		
		<div class="roomContainer">		
			<c:set var="list" value="${roomList }" />
			
			<c:if test="${empty list }">
				<span>예약 가능한 객실이 없습니다.</span> <br>
			</c:if>
			
			<c:if test="${!empty list }">
				<ul>
					<c:forEach items="${list }" var="i">
						<li>
							<p class="roomName">
								${i.getRoomName() }
							</p>
							<p class="keyword"><span>ROOM</span></p>
							<p class="roomBenefit">${i.getRoomContent() } |  ${i.getRoomSize() }</p>
							<p class="btnView">
								<a href="#" class="detail_btn">
									객실 상세보기
								</a>
							</p>
							<p class="priceWrap">
								<span class="price" >
									<span id="roomPrice">${i.getRoomPrice() }</span> KRW ~</span>
								<span class="night"><%=request.getAttribute("resNight") %>박 / 세금 별도</span>
							</p>
							<p class="thum">
								<img src="#" alt="${i.getRoomName() }">										
							</p>
							
							<input type="button" id='rsv_toggle_btn' value="RESERVE"/>
							
							<!-- 토글 버튼 클릭시 보이는 영역 -->
							<div id="toggleCont" style="display: none;" border='1'>
								<!-- room number table 수정후 반복생성 작업하기 -->
								<div class="roomInfor">
			                       <div class="titArea">
			                           <strong class="tit">[Member Exclusive] SMART CHOICE</strong>
			                       </div>
			                       <p class="roomBenefit">클럽 조선 리워드 회원분들을 위한 추가 3% 할인 혜택!</p>
			                       <div class="date">
			                           2021.04.14 - 2021.07.22
			                       </div>
			                       <span class="price">
			                           <em>349,200</em>KRW ~
			                       </span>
			                       <button type="button" class="btnLine">
			                           상품 상세보기
			                       </button>
			                       <input type="submit" id="rsv_btn" value="예약하기">
			                   </div>
							</div> <!-- toggleCont -->	
						</li>	
					 </c:forEach>	
					 	
				</ul>
				
			</c:if>
		
		</div><!-- roomContainer -->
		
	</form>
		
	
	<jsp:include page="../../include/footer.jsp" />
	
	
	
</body>
</html>