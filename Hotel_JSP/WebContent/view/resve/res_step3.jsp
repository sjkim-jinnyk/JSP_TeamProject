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

</head>
<body>
	
	<jsp:include page="../../include/header.jsp" />
	
	<form name="step3Form" id="step3Form" method="post" 
		action='<%=request.getContextPath()%>/step4.do'>
	 
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
			
			
			<div class="user_info">
				
				<h2 class="titDep2">[Member Exclusive] SMART CHOICE</h2>
				<p class="categoryTxt">
					<span><%=session.getAttribute("roomName") %></span>&nbsp;/&nbsp;
					<span><%=session.getAttribute("roomNumber") %></span>&nbsp;/&nbsp;[ROOM VIEW]
				</p>
				
				----------------------------
				
				<h3 class="opTit">RESERVATION NAME</h3>
				<%=session.getAttribute("userName") %><br><br>
				
				<h3 class="opTit">PHONE NUMBER</h3>
				<select id="nation" name="nation">
					<option value="82" selected="selected">대한민국(82)</option>
					<option value="1">미국(1)</option>
					<option value="44">영국(44)</option>
					<option value="86">중국(86)</option>
				</select>
				<input id="phone1">-<input id="phone2">-<input id="phone3"><br><br>
				
				<h3 class="opTit">E-MAIL</h3>
				<input id="email1">@<input id="email2">
				<select name="emailType" id="emailType">
					<option value="" selected="selected">직접 입력</option>
					<option value="gmail.com">gmail.com</option>
					<option value="naver.com">naver.com</option>
				</select><br><br>
				
				<h3 class="opTit">CREDIT CARD TYPE</h3>
				<select name="cardCode" id="cardCode">
					<option value="" selected="selected">카드 선택</option>
					<option value="">카드 선택</option>
					<option value="01">비씨</option>
					<option value="02">국민</option>
					<option value="03">하나(외환)</option>
				</select><br><br>
				
				<h3 class="opTit">CARD NUMBER</h3>
				<input id="cardNum1"><input id="cardNum2"><input id="cardNum3"><input id="cardNum4"><br><br>
				
				<h3 class="opTit">EXPIRY DATE</h3>
				<select name="expMonth" id="expMonth">
					<option value="" selected="selected">월</option>
					<option value="01">1월</option><option value="02">2월</option>
					<option value="03">3월</option><option value="04">4월</option>
					<option value="05">5월</option><option value="06">6월</option>
					<option value="07">7월</option><option value="08">8월</option>
					<option value="09">9월</option><option value="10">10월</option>
					<option value="11">11월</option><option value="12">12월</option>
				</select>
				<select id="expYear" name="expYear">
					<option value="" selected="selected">년</option> 
					<option value="2021">2021년</option>												
					<option value="2022">2022년</option>												
					<option value="2023">2023년</option>												
					<option value="2024">2024년</option>												
					<option value="2025">2025년</option>
				</select><br><br>
				
				<h3 class="opTit">CARD PASSWORD</h3>
				<input id="cardPwd" placeholder="비밀번호 앞 2자리"><br><br>
				
				<h3 class="opTit">DATE OF BIRTH</h3>
				<input id="bYear" placeholder="YYYY"><input id="bMonth" placeholder="MM"><input id="bDate" placeholder="DD">
				<p class="txtGuide">예약 접수 확인 용도이며, 온라인 예약 시 직접 결제가 이루어지지 않습니다.</p><br>
				
				----------------------------
				
				<h3 class="titDep3">신용카드 정보 수집 및 이용 동의</h3>
				<input type="checkbox" id="creditCardAgree" name="creditCardAgree" value="Y">
				<label for="creditCardAgree">[선택] 다음번 신용카드정보 재사용을 위해 위 신용카드 정보를 저장하는데 동의하십니까?</label><br>
				
				----------------------------
				
				<h3 class="titDep3">취소 규정</h3>
				<input type="checkbox" id="cancelAgree" name="cancelAgree">
				<label for="cancelAgree">[필수] 취소 및 노쇼(No-show) 규정에 동의합니다.</label>
				
			</div><!-- class="option" -->
			----------------------------
			
			<div class="rCont floating" style="transition: margin-top 0.3s ease-out 0s;">
				
				<ul class="toggleList rsvList" id="roomInfo">
					
					<li class="toggleOn">
						<strong class="listTit">
							<span class="price" id="pretax"><em><%=session.getAttribute("resTotal") %></em>KRW</span>
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
													<span id="aBrResult"><%=session.getAttribute("aBrPrice") %></span>
												</li>
												<li> 
													<span class="lfData">어린이 조식</span>
													<span id="cBrResult"><%=session.getAttribute("cBrPrice") %></span>
												</li>
												<li>
													<span class="lfData">엑스트라 베드</span>
													<span id="bedResult"><%=session.getAttribute("bedPrice") %></span>
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
						<span class="price"><em id="rTotalResult"><%=session.getAttribute("resTotal") %></em>KRW</span>
					</div>
					<div class="btnArea">
						<div>
							<input type="submit" value="회원 예약">
						</div>
					</div>
				</div><!-- class="totalCont" -->
				
			</div><!-- class="rCont floating" -->
			
		</div><!-- class="selResult" -->
		
		
		
	</form>
		
	<script type="text/javascript" src="js/res_step2.js"></script>
	<jsp:include page="../../include/footer.jsp" />
	
	
	
</body>
</html>