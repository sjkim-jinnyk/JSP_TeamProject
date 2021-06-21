<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 예약 - 고객 정보 입력 | 조선호텔앤리조트</title>

<link rel="stylesheet" href="css/StepStyle.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<jsp:include page="../../include/header.jsp" />
	
	<form name="step3Form" class="res_cont" id="step3Form" method="post" 
		action='<%=request.getContextPath()%>/step4.do'>
	 
		<div class="topArea">
			<div class="topInner">
				<h2 class="titDep1">Booking</h2>
				<div class="stepWrap">
					<ol>
						<li class="prev"></li>
						<li class="prev"></li>
						<li class="on3">예약자 정보입력</li>
						
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
						<dd id="dateText"><%=session.getAttribute("resIn") %>&nbsp;<%=session.getAttribute("resInYoil") %>&nbsp;/&nbsp;
							<%=session.getAttribute("resOut") %>&nbsp;<%=session.getAttribute("resOutYoil") %>&nbsp;|&nbsp;
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
					<a href="<%=request.getContextPath() %>/step0.do" class="step0_btn" 
					style="border: solid 1px;">객실 다시 검색</a>
				</div>
				
			</div>
		</div>	
		
		<div class="step3_content">
			<ul class="user_info">
				
				<li>
					<h2 class="titDep2">[Member Exclusive] SMART CHOICE</h2>
					<p class="categoryTxt">
						<span><%=session.getAttribute("roomName") %></span>&nbsp;/&nbsp;
						<span><%=session.getAttribute("roomNumber") %></span>&nbsp;/&nbsp;[ROOM VIEW]
					</p>
				</li>
				
				<li>
					<h3 class="opTit">RESERVATION NAME</h3>
					<span class="categoryTxt"><%=session.getAttribute("userName") %></span>
				</li>
				
				<li>	
					<h3 class="opTit">PHONE NUMBER</h3>
					<div class="between_warp">
						<select class="selectBtn">
							<option value="82" selected="selected">대한민국(82)</option>
							<option value="1">미국(1)</option>
							<option value="44">영국(44)</option>
							<option value="86">중국(86)</option>
						</select>
					
						<input type="text" id="phone1"><span class="span_tag">-</span><input type="text" id="phone2"><span class="span_tag">-</span><input type="text" id="phone3">
						
					</div>
				</li>
				
				<li>
					<h3 class="opTit">E-MAIL</h3>
					<div class="between_warp email">
						<input type="text" id="email1"><span class="span_tag">@</span><input type="text" id="email2">
						<select class="selectBtn">
							<option value="" selected="selected">직접 입력</option>
							<option value="gmail.com">gmail.com</option>
							<option value="naver.com">naver.com</option>
						</select>
					</div>
				</li>
				
				<li>
					<h3 class="opTit">CREDIT CARD TYPE</h3>
					<div class="s">
						<select  class="selectBtn">
							<option value="" selected="selected">카드 선택</option>
							<option value="">카드 선택</option>
							<option value="01">비씨</option>
							<option value="02">국민</option>
							<option value="03">하나(외환)</option>
						</select>
					</div>
				</li>
				
				<li>
					<h3 class="opTit">CARD NUMBER</h3>
					<div class="between_warp">
						<input type="text" id="cardNum1"><input type="text" id="cardNum2"><input type="text" id="cardNum3"><input type="text" id="cardNum4">
					</div>
				</li>
				
				<li>
					<h3 class="opTit">EXPIRY DATE</h3>
					<div class="between_warp cardDate">
						<select name="expMonth" id="expMonth" class="selectBtn">
							<option value="" selected="selected">월</option>
							<option value="01">1월</option><option value="02">2월</option>
							<option value="03">3월</option><option value="04">4월</option>
							<option value="05">5월</option><option value="06">6월</option>
							<option value="07">7월</option><option value="08">8월</option>
							<option value="09">9월</option><option value="10">10월</option>
							<option value="11">11월</option><option value="12">12월</option>
						</select>
						<select id="expYear" name="expYear" class="selectBtn">
							<option value="" selected="selected">년</option> 
							<option value="2021">2021년</option>												
							<option value="2022">2022년</option>												
							<option value="2023">2023년</option>												
							<option value="2024">2024년</option>												
							<option value="2025">2025년</option>
						</select>
					 </div>
				</li>
				
				<li>
					<h3 class="opTit">CARD PASSWORD</h3>
					<div class="between_warp cardPwd">
						<input type="text" id="cardPwd" placeholder="비밀번호 앞 2자리">
					</div>
				</li>
				
				<li>
					<h3 class="opTit">DATE OF BIRTH</h3>
					<div class="between_warp date_birth">
						<input type="text" id="bYear" placeholder="YYYY"><input type="text" id="bMonth" placeholder="MM"><input type="text" id="bDate" placeholder="DD">
					</div>
					<p class="txtGuide">* 예약 접수 확인 용도이며, 온라인 예약 시 직접 결제가 이루어지지 않습니다.</p>
				</li>
				
				<li>
					<div class="agree_wrap">
						<h3 class="titDep3">신용카드 정보 수집 및 이용 동의</h3>
						<div class="agree_txt_wrap">
							<input type="checkbox" id="creditCardAgree" name="creditCardAgree" value="Y">
							<label for="creditCardAgree"  class="agreeTxt">[선택] 다음번 신용카드정보 재사용을 위해 위 신용카드 정보를 저장하는데 동의하십니까?</label>
						</div>
					</div>
				</li>
				
				<li>
					<h3 class="titDep3">취소 규정</h3>
					<div class="agree_txt_wrap">
						<input type="checkbox" id="cancelAgree" name="cancelAgree">
						<label for="cancelAgree"  class="agreeTxt">[필수] 취소 및 노쇼(No-show) 규정에 동의합니다.</label>
					</div>
				</li>
				
			</ul><!-- class="option" -->
			
			
			<div class="rCont floating" style="transition: margin-top 0.3s ease-out 0s;">
				
				<ul class="toggleList rsvList" id="roomInfo">
					
					<li class="toggleOn">
						
						<fmt:formatNumber value="${sessionScope.resTotal }" pattern="#,###" var="total_c"/>
						<fmt:formatNumber value="${sessionScope.roomTotal }" pattern="#,###" var="rmTotal_c"/>
						<fmt:formatNumber value="${sessionScope.aBrPrice }" pattern="#,###" var="aBr_c"/>
						<fmt:formatNumber value="${sessionScope.cBrPrice }" pattern="#,###" var="cBr_c"/>
						<fmt:formatNumber value="${sessionScope.bedPrice }" pattern="#,###" var="bed_c"/>
						<fmt:formatNumber value="${sessionScope.resTax }" pattern="#,###" var="tax_c"/>
						
						<strong class="listTit">
							<span class="price" id="pretax"><em>${total_c }</em>KRW</span>
						</strong>
						
						<button type="button" class="total_toggle">
							<span class="hidden" ><i class="fas fa-chevron-up"></i></span>
						</button>
						
						<div class="toggleCont" style="display: block;">
							<div class="toggleInner">
								<div class="designScroll">
									<div class="optionTotal scrollWrap" style="">
										<div class="customScrollBox">
										
											<ul class="infoData">
												<li>
													<span id="rDateResult">0000.00.00</span>&nbsp;/&nbsp;
													<span id="roomPriceResult">${rmTotal_c }</span>
												</li>
											</ul>
											
											<ul class="infoData" id="roomOptInfo">
												<li>
													<span class="lfData">성인 조식</span>
													<span id="aBrResult">${aBr_c }</span>
												</li>
												<li> 
													<span class="lfData">어린이 조식</span>
													<span id="cBrResult">${cBr_c }</span>
												</li>
												<li>
													<span class="lfData">엑스트라 베드</span>
													<span id="bedResult">${bed_c }</span>
												</li>
											</ul>
											
											<ul class="infoData">
												<li>
													<span class="lfData">세금</span>
													<span class="rtData" id="rTaxResult">${tax_c }</span>
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
						<span class="price"><em id="rTotalResult">${total_c }</em>KRW</span>
					</div>
					<div class="btnArea">
						<div>
							<input type="submit" class="btn" value="회원 예약">
						</div>
					</div>
				</div><!-- class="totalCont" -->
				
			</div><!-- class="rCont floating" -->
			</div>
		</div><!-- class="selResult" -->
		
		
		
	</form>
		
	<script type="text/javascript" src="js/res_step2.js"></script>
	<jsp:include page="../../include/footer.jsp" />
	
	
	
</body>
</html>