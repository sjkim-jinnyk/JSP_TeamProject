<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 예약 - 투숙기간, 객실 선택 | 조선호텔앤리조트</title>
<link rel="stylesheet" href="/resources/demos/style.css">
<script type="text/javascript">

	// resAdult + -
	function count(type)  {
		  // 결과를 표시할 element
		  let resultElement = document.getElementById('result');
		  let resAdult =  document.getElementById('resAdult');
		  
		  // 현재 화면에 표시된 값
		  let number = resultElement.innerText;
		  
		  // 더하기/빼기
		  if(type === 'plus') {
			  if(number <= 3){
				   number = parseInt(number) +1;
				   resAdult.value = number;
			  }	 
		  }else if(type === 'minus')  {
			  if(number >= 1) {
				  number = parseInt(number) - 1;
				  resAdult.value = number;
			  }		    
		  }
		  
		  // 결과 출력	  
		  resultElement.innerText = number;
		  console.log(number);
		  
	} // count() end 
	
	// resChild + -
	function count2(type)  {
		  // 결과를 표시할 element
		  let resultElement = document.getElementById('result2');
		  let resChild =  document.getElementById('resChild');
		  
		  // 현재 화면에 표시된 값
		  let number = resultElement.innerText;
		  
		  // 더하기/빼기
		  if(type === 'plus') {
			  if(number <= 3){
				   number = parseInt(number) +1;
				   resChild.value = number;
			  }	 
		  }else if(type === 'minus')  {
			  if(number >= 1) {
				  number = parseInt(number) - 1;
				  resChild.value = number;
			  }		    
		  }
		  
		  // 결과 출력	  
		  resultElement.innerText = number;		 
	} // count2() end 
	
	// 날짜 입력값 받아서 화면에 출력하기
	function viewDate(){
		let resultIn = document.getElementById('resInView'); 		// 결과 표시할 부분
		let resultOut = document.getElementById('resOutView'); 		// 결과 표시할 부분
		let resIn = document.getElementById('resIn').value;				// 결과 값 저장 변수
		let resOut = document.getElementById('resOut').value;			// 결과 값 저장 변수
		
		let dateIn = resultIn.innerText;							// 현재 화면에 표시된 값
		let dateOut = resultIn.innerText;							// 현재 화면에 표시된 값
		
		
		dateIn.value = resIn;
		resultIn.innerText = resIn;
		
		console.log(resIn);

	}
	
	
/* 	// 숙박 일수 계산 (resOut - resIn)
	function countNight(){
		
		let nightResult = document.getElementById('nightResult'); 	// 결과 표시할 element
		let resNight = document.getElementById('resNight'); 		// 현재 화면에 표시된 값
			
		let startDate = new Date('resIn');
		let endDate = new Date('resOut');
		
		let dateDiff = Math.ceil((edt.getTime()-sdt.getTime())/(1000*3600*24)); // 차이일수를 정수로 변환
		// 출처: https://kunoo.tistory.com/entry/javascript-날짜-차이간격-일수-구하기 [Kunoo]
		
		if(dateDiff >= 1){
			nightResult = dateDiff -1;
			resNight = nightResult;
			console.log(resNight);
			
		}else if(dateDiff <= 0){
			alert('정확한 숙박 날짜를 선택해주세요.');
		} 
	
	} // countNight() end
*/
	
</script>
  
</head>
<body>

	<jsp:include page="../../include/header.jsp" />
	
	<form id="step0Form" name="step0Form" method="post" 
			action="<%=request.getContextPath()%>/step1.do">
					
		<input type="hidden" name="resNight" id="resNight" value="1">				
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
							<span id="nightResult">0</span> 박
						</p>
						<button type="button" class="btnToggle1">V</button><br>
						<div class="toggleCont1">
							<input type="date" id="resIn" onclick="viewDate(in)">&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="date" id="resOut"  onclick="viewDate(out)">
						</div>
						<hr>
					</li>				
				</ul>
				<ul class="personToggle">	
					<li class="personCount">
						<p class="listTitle2" style="display: inline">인원 선택</p>
						<p class="countText" id="countText" style="display: inline">
							성인 0명 | 어린이 0명
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