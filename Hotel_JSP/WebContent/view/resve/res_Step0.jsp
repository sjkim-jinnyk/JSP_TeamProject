<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 예약 - 투숙기간, 객실 선택 | 조선호텔앤리조트</title>
<link rel="stylesheet" href="/resources/demos/style.css">
<script type="text/javascript">
	
	// 페이지가 처음 로드되었을때 실행문
	window.onload = function(){
		
		let resIn_val = document.getElementById('resIn_val'); 		// input type=date 안에 표시 날짜
		let resOut_val = document.getElementById('resOut_val'); 		
		
		let resIn = document.getElementById('resIn');				// 결과 값 저장 변수
		let resOut = document.getElementById('resOut');				

		let resInView = document.getElementById('resInView'); 		// 상단 표시 날짜
		let resOutView = document.getElementById('resOutView'); 
		
		let resInYoil = document.getElementById('resInYoil'); 		// 화면 요일 표시 부분 . (화면에만 출력, 값은 안넘김)
		let resOutYoil = document.getElementById('resOutYoil'); 
		
		let now = new Date(); // 현재 날짜
		let year = now.getFullYear();
		let month = now.getMonth() +1;
		let date = now.getDate();
		let yoil = now.getDay();
		
		let tomorrow = new Date(now.setDate(now.getDate() + 1)); // 내일 날짜
		let t_year = tomorrow.getFullYear();
		let t_month = tomorrow.getMonth() +1;
		let t_date = tomorrow.getDate();
		let t_yoil = tomorrow.getDay();
		
		
		if(month < 10){
			month = '0' +month;
			
			if(date < 10){
				date = '0' +date;
			}
		}
		
		if(t_month < 10){
			t_month = '0' +t_month;
			
			if(t_date < 10){
				t_date = '0' +t_date;
			}
		}
		
		if(yoil = 1){
			yoil = '월';
			t_yoil = '화';
		}else if(yoil = 2){
			yoil = '화';
			t_yoil = '수';
		}else if(yoil = 3){
			yoil = '수';
			t_yoil = '목';
		}else if(yoil = 4){
			yoil = '목';
			t_yoil = '금';
		}else if(yoil = 5){
			yoil = '금';
			t_yoil = '토';
		}else if(yoil = 6){
			yoil = '토';
			t_yoil = '일';
		}else if(yoil = 7){
			yoil = '일';
			t_yoil = '월';
		}
		
	
		// 결과 저장
		resIn.value = now;
		resOut.value = tomorrow;
		
		resIn_val.value = year+ '-' +month+ '-' +date;
		resOut_val.value = t_year+ '-' +t_month+ '-' +t_date;
		
		resInView.innerText = resIn_val.value;
		resOutView.innerText = resOut_val.value;
		
		resInYoil.innerText = yoil;
		resInYoil.innerText = t_yoil;
		
		
	}
	
	
	// 어른 인원 증감 (완료)
	function count(type)  {
		  // 결과를 표시할 element
		  let resultElement = document.getElementById('result'); // +- 버튼 안쪽 명수
		  let resultA =  document.getElementById('resultA'); // 상단 표시 명수
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
		  resultA.innerText = number;
		  
	} // count() end 
	
	// 어린이 인원 증감 (완료)
	function count2(type)  {
		  // 결과를 표시할 element
		  let resultElement = document.getElementById('result2'); // +- 버튼 안쪽 명수
		  let resultC =  document.getElementById('resultC'); // 상단 표시 명수
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
		  resultC.innerText = number;
	} // count2() end 
	
	// 날짜 입력값 받아서 화면에 출력하기 (완료)
	function viewDate(type){
		let resultIn = document.getElementById('resIn_val'); 		// input type=date 안에 표시 날짜
		let resultOut = document.getElementById('resOut_val'); 		
		
		let resIn = document.getElementById('resIn');				// 결과 값 저장 변수
		let resOut = document.getElementById('resOut');				

		let resInView = document.getElementById('resInView'); 		// 상단 표시 날짜
		let resOutView = document.getElementById('resOutView'); 
		
		if(type === 'in'){
			resIn.value = resultIn.value;
			resultIn.innerText = resultIn.value;
			resInView.innerText = resultIn.value;
		}else if(type === 'out'){
			resOut.value = resultOut.value;
			resultOut.innerText = resultOut.value;
			resOutView.innerText = resultOut.value;
		}

	} // viewDate() end
	
	
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