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

	// foreach로 반복생성되는 각각의 toggle들 개별 실행
	// STANDARD count = 1 / DELUXE = 2 ... 
	// 참조: https://okky.kr/article/422641
	function rsvToggle(count) {
		 $("[name='roomNumber']:eq(" +(count-1)+ ")").toggle('slow');
		 
	}
	
	
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
						<li>
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
				<a href="res_Step0.jsp" class="step0_btn">객실 다시 검색</a><br>
				----------------------------
			</div>
		</div>
		
		<div class="roomType">
			<c:set var="list" value="${roomList }" />
			
			<c:forEach items="${list }" var="i" varStatus="status" step='3'>
				
				<dl class="roomIntro">
	                 <dt class="roomName">
	                     ${i.getRoomName() }
	                 </dt>
	                 <dd class="keyword"><span>ROOM</span></dd>
	                 <dd class="roomBenefit">[roomView] view |  Size: ${i.getRoomSize() }㎡</dd>
	                 <dd class="btnView">
	                     <a href="#none" class="btnS icoArr">
	                         객실 상세보기
	                     </a>
	                 </dd>
	                 <dd class="priceWrap">
	                     <span class="price">
	                         ${i.getRoomPrice() }<em>KRW ~</em>
	                     </span>
	                     <span class="day">1박 / 세금 별도</span>
	                 </dd>
	                 <dd class="thum">
	                 	<img src="../../image/${i.getRoomImage() }.jpeg" alt="${i.getRoomContent() }">										
	                 </dd>
	             </dl>
	             
	             <!-- toggle btn -->
	             <button type="button" id="rsv_toggle_btn" style='border: 1px solid' 
	                 	onclick="rsvToggle(${status.count});return false;">RESERVE</button>
	             
	            <!-- toggle inner -->
	            <div class="roomNumber" name="roomNumber" style='display: none;'>
	                <h4 class="titDep3">OFFERS</h4>
	                 
	                <ul>
	                	<c:forEach items="${list }" var="i" varStatus="s"
	                		begin="1" end="3">
			                <li class="">
			                   <div id="${status.count }0${s.count}" style='border: 1px solid'>
			                       <div class="titArea">
			                           <strong class="tit">${status.count }0${s.count}호</strong>
			                       </div>
			                       
		                           <button type="button" class="detail_btn">
		                               상품 상세보기
		                           </button>
		                           
		                           <input type="submit" value="예약하기">
			                   </div>
	                    	</li>
	                    </c:forEach>
                    </ul>
	            </div>
	             
	            <br>
	             ----------------------------------
	        </c:forEach>
		</div>
		
	</form>
		
	
	<jsp:include page="../../include/footer.jsp" />
	
	
	
</body>
</html>