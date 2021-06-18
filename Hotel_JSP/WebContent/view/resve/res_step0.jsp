<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 예약 - 투숙기간, 객실 선택 | 조선호텔앤리조트</title>
<link rel="stylesheet" href="css/ResStyle.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<jsp:include page="../../include/header.jsp" />
		
	<div class="topArea">
		<div class="topInner">
			<h2 class="titDep1">Booking</h2>
			<p class="pageGuide">
				호텔 앤 리조트의 다양하고 감각적인 인테리어와 특별한 여유를
				<br/>
				느낄 수 있는 객실에서 잊을 수 없는 여행의 경험을 선사합니다.
			</p>
		</div>
	</div>

	<form class="res_cont" id="step0Form" name="step0Form" method="post" 
			action="<%=request.getContextPath()%>/step1.do">
		<input type="hidden" name="resIn" id="resIn" value="0">				
		<input type="hidden" name="resOut" id="resOut" value="0">
		<input type="hidden" name="resNight" id="resNight" value="0">				
		<input type="hidden" name="resAdult" id="resAdult" value="1">								
		<input type="hidden" name="resChild" id="resChild" value="0">
		<input type="hidden" name="resInYoil" id="resInYoil" value="">
		<input type="hidden" name="resOutYoil" id="resOutYoil" value="">

			<div class="inner">
				<ul class="dateSelect">		
					<li>
						<strong class="listTit">안내사항</strong>	
						<p class="resGuide">
							숙박 예약은 로그인 후 이용이 가능합니다. 회원이 아니시라면 회원가입을 부탁드립니다.
							<br/>
							* 어린이 기준 : 37개월 - 만 12세
						</p>
					</li>			
					<li class="selectResDate">
						<strong class="listTit">투숙기간 선택</strong>
						<%-- <em class="intValue" id="dateText"></em> --%>
						<button type="button" class="dToggleBtn"><i class="fas fa-chevron-down"></i></button>
						<div class="dateTexts" id="dateTexts">
							<span id="resInView"></span>&nbsp;<span id="in_Yoil"></span>&nbsp;-&nbsp;
							<span id="resOutView"></span>&nbsp;<span id="out_Yoil"></span>
							<span id="nightResult" class="nightResult"></span>
						</div>	
						<div class="dToggleInner">
							<div id="datepicker"></div>
						</div>
					</li>				
					<li class="personCount">
						<strong class="listTit">인원 선택</strong>
						<button type="button" class="pToggleBtn"><i class="fas fas fa-chevron-down"></i></button>
						<div class="countText" id="countText">
							성인 <div id="resultA" style="display: inline">1</div>명
							<span class="countbefore"></span>어린이 <div id="resultC" style="display: inline">0</div>명
						</div>
						
						
						<div class="pToggleInner"  style="display: none">
							<div class="count">
								<button type="button" onclick="count('minus')">
									<i class="fas fa-minus" aria-hidden="true"></i>
								</button>
								<span class="count_span">성인 <em id="result">1</em></span>
								<button type="button" onclick="count('plus')">
									<i class="fas fa-plus" aria-hidden="true"></i>
								</button>
							</div>
							<div class="count">
								<button type="button" onclick="count2('minus')">
									<i class="fas fa-minus" aria-hidden="true"></i>
								</button>
								<span class="count_span">어린이 <em id="result2">0</em> </span>
								<button type="button" onclick="count2('plus')" value="+">
									<i class="fas fa-plus" aria-hidden="true"></i>
								</button>
							</div>
						</div>
					</li>
				</ul>
				<div class="res_submit_area">
					<input type="submit" class="res_submit" value="객실 검색">
				</div>
				
			</div>
		
	</form>
	<script type="text/javascript" src="js/cal.js"></script>
	<script type="text/javascript" src="js/res_step0.js"></script>

	<jsp:include page="../../include/footer.jsp" />

</body>
</html>