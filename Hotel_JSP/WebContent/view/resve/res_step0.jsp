<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 예약 - 투숙기간, 객실 선택 | 조선호텔앤리조트</title>
<link rel="stylesheet" href="css/ResStyle.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- <link rel="stylesheet" href="/resources/demos/style.css">-->

<!--  
<link rel="stylesheet" type="text/css" href="css/fullpage.css" />
<link rel="stylesheet" href="css/MainStyle.css">
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
-->

</head>
<body>

	<jsp:include page="../../include/header.jsp" />
	
	<form class="res_cont" id="step0Form" name="step0Form" method="post" 
			action="<%=request.getContextPath()%>/step1.do">
			
		
		<input type="hidden" name="resIn" id="resIn" value="0">				
		<input type="hidden" name="resOut" id="resOut" value="0">
		<input type="hidden" name="resNight" id="resNight" value="0">				
		<input type="hidden" name="resAdult" id="resAdult" value="1">								
		<input type="hidden" name="resChild" id="resChild" value="0">
		<input type="hidden" name="resInYoil" id="resInYoil" value="">
		<input type="hidden" name="resOutYoil" id="resOutYoil" value="">

		<div id="container" class="container">
		
			<div class="topArea">
				<div class="topInner">
					
					<h2 class="titDep1">Booking</h2>
					<p class="pageGuide">조선호텔앤리조트의 다양하고 감각적인 인테리어와 특별한 여유를
									<br> 느낄 수 있는 객실에서 잊을 수 없는 여행의 경험을 선사합니다.</p>
				</div>
			</div> <!-- class="topArea" -->
			
			<div class="inner">
			
				<ul class="dateSelect">					
					<li class="selectResDate">
						<hr>
						<p class="listTitle" style="display: inline">투숙기간 선택</p>
						<p class="dateText" id="dateText" style="display: inline">
							<span id="resInView">0000.00.00</span>&nbsp;<span id="in_Yoil">[요일]</span>&nbsp;-&nbsp;
							<span id="resOutView">0000.00.00</span>&nbsp;<span id="out_Yoil">[요일]</span>&nbsp;|&nbsp;
							<span id="nightResult" >0</span> 박
						</p>
						<button type="button" class="dToggleBtn">V</button><br>
						<div class="dToggleInner">
							[datepicker]
							 <div id="element_to_pop_up">
							      <a class="b-close">
							        <i class="fas fa-times"></i>
							      </a>
							      <div id="datepicker"></div>
							 </div>
							<input type="date" id="resIn_val" onchange="viewDate('in');">&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="date" id="resOut_val" onchange="viewDate('out');">
						</div>
						<hr>
					</li>				
				</ul>
				
				<ul class="personSelect">	
					<li class="personCount">
						<p class="listTitle2" style="display: inline">인원 선택</p>
						<p class="countText" id="countText" style="display: inline">
							성인 <div id="resultA" style="display: inline">1</div>명 | 
							어린이 <div id="resultC" style="display: inline">0</div>명
						<button type="button" class="pToggleBtn">V</button><br>
						<div class="pToggleInner"  style="display: none">
							<div class="count">
								<input type="button" onclick="count('minus')" value="-"/>
								성인<div id="result" style="display: inline">1</div>
								<input type="button" onclick="count('plus')" value="+"/>
							</div>
							<div class="count">
								<input type="button" onclick="count2('minus')" value="-"/>
								어린이<div id="result2" style="display: inline">0</div>
								<input type="button" onclick="count2('plus')" value="+"/>
							</div>
						</div>
					</li>
				</ul>
				<input type="submit" class="btn" value="객실 검색">
				
			</div>
			
		</div>	
		
	</form>
	
	
	<jsp:include page="../../include/footer.jsp" />
	
	<script type="text/javascript" src="js/res_step0.js"></script>
	<!--  
	<script type="text/javascript" src="js/fullpage.js"></script>
	<script type="text/javascript" src="js/cal.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
	<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  	<script>
    	AOS.init();
  	</script>
	-->

</body>
</html>