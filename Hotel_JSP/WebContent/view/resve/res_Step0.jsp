<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 예약 - 투숙기간, 객실 선택 | 조선호텔앤리조트</title>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> 
<script src="https://code.jquery.com/jquery-1.12.4.js"></script> 
<script src="https://code.jqeury.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">

	function count(type)  {
		  // 결과를 표시할 element
		  let resultElement = document.getElementById('result');
		  let resAdult =  document.getElementById('resAdult').value;
		  
		  // 현재 화면에 표시된 값
		  let number = resultElement.innerText;
		  
		  // 더하기/빼기
		  if(type === 'plus') {
			  if(number <= 3){
				   number = parseInt(number) +1;
				   resAdult = parseInt(resAdult) + 1;
			  }	 
		  }else if(type === 'minus')  {
			  if(number >= 1) {
				  number = parseInt(number) - 1;
				  resAdult -1;
			  }
		    
		  }
		  
		  // 결과 출력
		  
		  resultElement.innerText = number;
		  
		let result1 = document.getElementById('result').value;
		resAdult.value = number;
		
		console.log(document.getElementById('resAdult').value);
		 
	}
	
	function count2(type)  {
		  // 결과를 표시할 element
		  const resultElement = document.getElementById('result2');
		  
		  // 현재 화면에 표시된 값
		  let number = resultElement.innerText;
		  
		  // 더하기/빼기
		  if(type === 'plus') {
			  if(number <= 3){
				   number = parseInt(number) + 1;
			  }	 
		  }else if(type === 'minus')  {
			  if(number >= 1){
				  number = parseInt(number) - 1;
			  }
		  
		  }
		  
		  // 결과 출력
		  
		  resultElement.innerText = number;
		  
		let result1 = document.getElementById('result2').value;
		let resAdult =  document.getElementById('resChild').value;
		resChild.value = number;
	}
	
</script>
</head>
<body>

	<jsp:include page="../../include/header.jsp" />
	
	<form id="step0Form" name="step0Form" method="post" 
			action="<%=request.getContextPath()%>/step1.do">
		
		<input type="hidden" name="resIn" id="resIn" value="2021.06.04"> 				
		<input type="hidden" name="resOut" id="resOut" value="2021.06.05"> 			
		<input type="hidden" name="night" id="night" value="1">				
		<input type="number" id="resAdult" value="0">								
		<input type="hidden" id="resChild" value="0">
	
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
							2021.06.04&nbsp;금&nbsp;-&nbsp;2021.06.05&nbsp;토&nbsp;|&nbsp;<span>1 박</span></p>
						<button type="button" class="btnToggle1">V</button><br>
						<div class="toggleCont1">
							<input type="date" id="resIn" name="resIn">&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="date" id="resOut" name="resOut">
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