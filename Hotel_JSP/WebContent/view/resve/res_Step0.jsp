<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 예약 - 투숙기간, 객실 선택 | 조선호텔앤리조트</title>
<link rel="stylesheet" href="/resources/demos/style.css">
<script type="text/javascript" src="../../js/reserve.js">
	
	
	
	
/* 	// 숙박 일수 계산 (미완)
	function countNight(){		
		let resNight = document.getElementById('resNight'); 		// 값 저장
		let nightResult = document.getElementById('nightResult'); 	// 결과 표시 부분
		resNight.value = 1;
		nightResult.innerText = resNight.value;		
		
 		let startDate = new Date('resIn');
		let endDate = new Date('resOut');
		
		let dateDiff = Math.ceil((edt.getTime()-sdt.getTime())/(1000*3600*24));  */
		// 차이일수를 정수로 변환
		// 출처: https://kunoo.tistory.com/entry/javascript-날짜-차이간격-일수-구하기 [Kunoo]
		/* 
		if(dateDiff >= 1){
			resNight = dateDiff -1;
			nightResult.innerText = resNight.value;		
		}else if(dateDiff <= 0){
			alert('정확한 숙박 날짜를 선택해주세요.');
		}   
	
	} */// countNight() end
	
	// 선택날짜 표시 영역에 체크인=오늘, 체크아웃=내일 이라고 표시  (미완)
/* 	function getToday(type){	
		let resInView =  document.getElementById('resInView');		// 결과 표시할 element
		let resOutView =  document.getElementById('resOutView');

		let date = new date();	
		
		
	} */
	
	// 요일 표시 
/* 	function getYoil(type){
		
	} */
	
</script>
  
</head>
<body>

	<jsp:include page="../../include/header.jsp" />
	
	<form id="step0Form" name="step0Form" method="post" 
			action="<%=request.getContextPath()%>/step1.do">
					
		<input type="hidden" name="resIn" id="resIn" value="0">				
		<input type="hidden" name="resOut" id="resOut" value="0">
		<input type="hidden" name="resNight" id="resNight" value="0">				
		<input type="hidden" name="resAdult" id="resAdult" value="0">								
		<input type="hidden" name="resChild" id="resChild" value="0">
	
		<div id="container" class="container">
		
			<div class="topArea">
				<div class="topInner">
					<h2 class="titDep1">Booking</h2>
					<p class="pageGuide">조선호텔앤리조트의 다양하고 감각적인 인테리어와 특별한 여유를
									<br> 느낄 수 있는 객실에서 잊을 수 없는 여행의 경험을 선사합니다.</p>
				</div>
			</div> <!-- class="topArea" -->
			
			<div class="inner">
				<ul class="dateToggle">					
					<li class="resIn_Out">
						<hr>
						<p class="listTitle" style="display: inline">투숙기간 선택</p>
						<p class="dateText" id="dateText" style="display: inline">
							<span id="resInView">0000.00.00</span>&nbsp;<span id="resInYoil">월</span>&nbsp;-&nbsp;
							<span id="resOutView">0000.00.00</span>&nbsp;<span id="resOutYoil">월</span>&nbsp;|&nbsp;
							<span id="nightResult" onchange="countNight()">0</span> 박
						</p>
						<button type="button" class="btnToggle1">V</button><br>
						<div class="toggleCont1">
							<input type="date" id="resIn_val" onchange="viewDate('in')">&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="date" id="resOut_val"  onchange="viewDate('out')">
						</div>
						<hr>
					</li>				
				</ul>
				<ul class="personToggle">	
					<li class="personCount">
						<p class="listTitle2" style="display: inline">인원 선택</p>
						<p class="countText" id="countText" style="display: inline">
							성인 <div id="resultA" style="display: inline">0</div>명 | 
							어린이 <div id="resultC" style="display: inline">0</div>명
						<button type="button" class="btnToggle2">V</button><br>
						<div class="toggleCont2">
							<div class="count">
								<input type="button" onclick="count('minus')" value="-"/>
								성인<div id="result" style="display: inline">0</div>
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
				<input type="submit" value="객실 검색">
				
			</div>
			
		</div>	
		
	</form>
	
	<jsp:include page="../../include/footer.jsp" />
	

</body>
</html>