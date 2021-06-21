<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 예약 - 옵션 선택 | 조선호텔앤리조트</title>

<link rel="stylesheet" href="css/Step3Style.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	
	<jsp:include page="../../include/header.jsp" />
	
	<form name="step2Form" class="res_cont" id="step2Form" method="post" 
		action='<%=request.getContextPath()%>/step3.do'>
	 <div class="container">
		<div class="topArea">
			<div class="topInner">
				<h2 class="titDep1">Booking</h2>
				<div class="stepWrap">
					<ol>
						<li class="prev"></li>
						<li class="on">옵션 선택</li>
						<li class="next"></li>		
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
							<%=session.getAttribute("resOut") %>&nbsp;<%=session.getAttribute("resOutYoil") %>
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
					<a href="<%=request.getContextPath() %>/step0.do" class="btn">객실 다시 검색</a>
				</div>
				
			</div>
		</div><!-- class="selResult" -->
			
		<%--step3action 으로 넘길 값 --%>
		<input type="hidden" id="resAdultBr" name="resAdultBr" value="0">
		<input type="hidden" id="resChildBr" name="resChildBr" value="0">
		<input type="hidden" id="resBed" name="resBed" value="0">
		<input type="hidden" id="resDate" name="resDate" value="0">
		
		<%--테이블에 들어가는 값은 아니고 view페이지 출력용 --%>
		<input type="hidden" id="roomTotal" name="roomTotal" value="0"> <!-- 옵션,세금 미포함 -->
		<input type="hidden" id="resTax" name="resTax" value="0">  <!-- 세금 () -->
		<input type="hidden" id="resPretax" name="resPretax" value="0"> <!-- 세금미포함 총금액 -->
		<input type="hidden" id="resTotal" name="resTotal" value="0"><!-- 세금포함 총금액 -->
		
		<input type="hidden" id="aBrPrice" name="aBrPrice" value="0"> <!-- 어른조식*45000 -->
		<input type="hidden" id="cBrPrice" name="cBrPrice" value="0"> <!-- 어린이조식*27000 -->
		<input type="hidden" id="bedPrice" name="bedPrice" value="0"> <!-- 엑스트라베드*44000 -->
		
		<%--resTotal(총금액) 계산에 필요한 세션 값 받아오기 --%>
		<input type="hidden" id="roomPrice" value="<%=session.getAttribute("roomPrice") %>">
		<input type="hidden" id="resNight" value="<%=session.getAttribute("resNight") %>">
		<input type="hidden" id="resAdult" value="<%=session.getAttribute("resAdult") %>">
		<input type="hidden" id="resChild" value="<%=session.getAttribute("resChild") %>">
		
		<div class ="step2_content"> 
			<div class="option">
				
				<h2 class="titDep2">[Member Exclusive] SMART CHOICE</h2>
				<p class="categoryTxt">
					<span><%=session.getAttribute("roomName") %></span>&nbsp;/&nbsp;
					<span><%=session.getAttribute("roomNumber") %></span>&nbsp;/&nbsp;[ROOM VIEW]
				</p>
				
				<div class="opCont">
					<h3 class="opTit">BREAKFAST</h3>
					<div class="addOption">
						<div class="peopleOption">
							<span class="txt">성인 조식 추가</span>
							<span class="price">KRW 45,000</span>
							<div class="numPeople">
								<input id="opBtn" type="button" onclick="count('minus')" value="－"/>
								<span id="result" style="display: inline">0</span>
								<input id="opBtn" class="btnUp" type="button" onclick="count('plus')" value="＋"/>
							</div>
						</div>
						<div class="peopleOption">
							<span class="txt">어린이 조식 추가</span>
							<span class="price">KRW 27,000</span>
							<div class="numPeople2">
								<input id="opBtn" type="button" onclick="count2('minus')" value="－"/>
								<span id="result2" style="display: inline">0</span>
								<input id="opBtn" type="button" onclick="count2('plus')" value="＋"/>
							</div>
						</div>
						<ul class="txtGuide">
							<li>* 투숙 일수와 동일한 횟수의 조식이 제공됩니다.</li>
							<li>* 인원 추가 금액에는 조식이 포함되어 있지 않습니다. 조식 추가 기능을 통해 별도로 추가가 가능합니다.</li>
							<li>* 어린이 조식 추가 비용 적용 대상은 37개월 이상 만 12세 이하입니다.</li>
							<li>* 사전 추가된 조식의 경우 특별요금이 적용된 혜택으로, 체크인 후 미사용 시 환불이 불가합니다.<!-- 사전 추가된 조식의 경우 특별요금이 적용된 혜택으로, 체크인 후 미사용 시 환불이 불가합니다. --></li>
							<li>* 코로나19에 따른 사회적 거리두기 정부 시책이 진행될 경우, 뷔페 조식은 다른 장소 및 단품 메뉴로 대체 제공될 수 있습니다.<!-- 코로나19에 따른 사회적 거리두기 정부 시책이 진행될 경우, 뷔페 조식은 다른 장소 및 단품 메뉴로 대체 제공될 수 있습니다. --></li>
						</ul>
					</div>
					<!-- <div class="addOption"> -->
				
					<h3 class="opTit">EXTRA BED</h3>
					<div class="addOption" >
						<div class="peopleOption">
							<span class="txt">엑스트라 베드 추가</span>
							<span class="price">KRW 44,000</span>
							<div class="numPeople3">
								<input id="opBtn" type="button" onclick="count3('minus')" value="－"/>
								<div id="result3" style="display: inline">0</div>
								<input id="opBtn" type="button" onclick="count3('plus')" value="＋"/>
							</div>
						</div>
					</div>
					
					<h3 class="opTit">REQUESTS</h3>
					<textarea name="resRequest" 
								placeholder="호텔 이용 시 문의하실 사항이 있으시면 입력해 주세요.""></textarea>
					<p class="txtGuide">* 전달해주신 요청사항을 최대한 반영하도록 최선을 다하겠습니다.<br>
						다만, 부득이하게 반영되지 않을 수 있는 점, 양해 부탁드립니다.</p> 
				</div><!-- <div class="opCont"> -->
			</div><!-- class="option" -->
			
			<div class="rCont floating" style="transition: margin-top 0.3s ease-out 0s;">
				
				<ul class="toggleList rsvList" id="roomInfo">
					
					<li class="toggleOn">
						<strong class="listTit">
							<span class="price"><span id="totalResult">0</span>KRW</span>
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
													<span id="rDateResult">0000.00.00</span>
													<span id="roomPriceResult">[roomTotal]</span>
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
											
											<ul class="infoData_tax">
												<li>
													<span class="lfData">세금</span>
													<span id="taxResult">[resTotal/10]</span>
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
						<!-- <p class="subTxt">+ 세금(10%)</p> -->
						<span class="txt">총 예약금액</span>
						<span class="subTxt">+ 세금(10%)</span>										
						<span class="price"><span id="realTotal">0</span>KRW</span>
					</div>
					<div class="btnArea">
						<div>
							<input type="submit" class="btn" value="회원 예약">
						</div>
					</div>
				</div><!-- class="totalCont" -->
				
			</div><!-- class="rCont floating" -->
		</div><!-- class="step_content" -->
		
	</div><!-- class="container" -->
		
		
	</form>
		
	
	<jsp:include page="../../include/footer.jsp" />
	
	
	
</body>
<script type="text/javascript" src="js/res_step2.js"></script>
</html>