<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 예약 - 고객 정보 입력 | 조선호텔앤리조트</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="../../js/res_step2.js"></script>
</head>
<body>
	
	<jsp:include page="../../include/header.jsp" />
	
	<form name="step3Form" id="step3Form" method="post" 
		action='<%=request.getContextPath()%>/step3.do'>
	 
		<div class="topArea">
			<div class="topInner">
				<br><br><br>
				<h2 class="titDep1">Booking</h2>
				<div class="stepWrap">
					<ol>
						<li></li>
						<li></li>
						<li>예약자 정보 입력</li>
						
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
						<dd id="dateText"><%=session.getAttribute("resIn") %>&nbsp;[요일]&nbsp;-&nbsp;
							<%=session.getAttribute("resOut") %>&nbsp;[요일]
							<%=session.getAttribute("resNight") %>&nbsp;박</dd>
					</dl>
					<dl class="room">
						<dt>ROOM</dt>
						<dd id="roomText"><%=session.getAttribute("roomName") %> / <%=session.getAttribute("roomNumber") %></dd>
					</dl>
					<dl class="adults">
						<dt>ADULTS</dt>
						<dd><%=session.getAttribute("resAdult") %></dd>
					</dl>
					<dl class="children">
						<dt>CHILDREN</dt>
						<dd><%=session.getAttribute("resChild") %></dd>
					</dl>
				</div>
				<a href="<%=request.getContextPath() %>/step0.do" class="step0_btn" 
					style="border: solid 1px;">객실 다시 검색</a><br>
				----------------------------
			</div>
			
			
			<div class="option">
				
				 
				
			</div><!-- class="option" -->
			----------------------------
			
			<div class="rCont floating" style="transition: margin-top 0.3s ease-out 0s;">
				
				<ul class="toggleList rsvList" id="roomInfo">
					
					<li class="toggleOn">
						<strong class="listTit">
							<span class="price" id="rTotalResult"><em>0</em>KRW</span>
						</strong>
						
						<button type="button" class="total_toggle" style="border: solid 1px;">
							<span class="hidden" >상세내용 보기</span>
						</button>
						
						<div class="toggleCont" style="display: block;">
							<div class="toggleInner">
								<div class="designScroll">
									<div class="optionTotal scrollWrap" style="">
										<div class="customScrollBox">
										
											<ul class="infoData">
												<li>
													<span id="rDateResult">0000.00.00</span>&nbsp;/&nbsp;
													<span id="roomPriceResult"><%=session.getAttribute("roomTotal") %></span>
												</li>
											</ul>
											
											<ul class="infoData" id="roomOptInfo">
												<li>
													<span class="lfData">성인 조식</span>
													<span id="aBrResult">0</span>
												</li>
												<li>
													<span class="lfData">어린이 조식</span>
													<span id="cBrResult">0</span>
												</li>
												<li>
													<span class="lfData">엑스트라 베드</span>
													<span id="bedResult">0</span>
												</li>
											</ul>
											
											<ul class="infoData">
												<li>
													<span class="lfData">세금</span>
													<span class="rtData" id="rTaxResult"><%=session.getAttribute("resTax") %></span>
												</li>
											</ul>
											
										</div>
									</div>
								</div>
							</div>
						</div><!-- class="toggleCont" -->
						
					</li>	
				</ul><!-- class="toggleList rsvList" -->
					
				<div class="totalCont">
					<div class="totalPrice">
						<span class="txt">총 예약금액</span>
						<span class="subTxt">+ 세금(10%)</span>										
						<span class="price"><em id="rTotalResult"><%=session.getAttribute("resTax") %></em>KRW</span>
					</div>
					<div class="btnArea">
						<div>
							<a href="<%=request.getContextPath() %>/step3.do" class="rsv_btn"
								style="border: solid 1px;">
								회원 예약
							</a>
						</div>
					</div>
				</div><!-- class="totalCont" -->
				
			</div><!-- class="rCont floating" -->
			
		</div><!-- class="selResult" -->
		
		
		
	</form>
		
	
	<jsp:include page="../../include/footer.jsp" />
	
	
	
</body>
</html>