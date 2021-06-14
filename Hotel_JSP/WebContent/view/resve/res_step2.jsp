<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 예약 - 객실, 요금 선택 | 조선호텔앤리조트</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

	//어른 조식 증감
	function count(type)  {
	  // 결과를 표시할 element
	  let resultElement = document.getElementById('result'); // +- 버튼 안쪽 숫자
	  let resAdult =  document.getElementById('resAdultBr');
	  
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
	  
	} // count() end 
	
	// 어린이 조식 증감
	function count2(type)  {
	  // 결과를 표시할 element
	  let resultElement = document.getElementById('result2'); // +- 버튼 안쪽 숫자
	  let resChild =  document.getElementById('resChildBr');
	
	  
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
	
	// 엑스트라베드 증감
	function count3(type)  {
	  // 결과를 표시할 element
	  let resultElement = document.getElementById('result3'); // +- 버튼 안쪽 숫자
	  let resChild =  document.getElementById('resBed');
	
	  
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
	
</script>
</head>
<body>
	
	<jsp:include page="../../include/header.jsp" />
	
	<form name="step2Form" id="step2Form" method="post" 
		action='<%=request.getContextPath()%>/step3.do'>
	 
		<div class="topArea">
			<div class="topInner">
				<br><br><br>
				<h2 class="titDep1">Booking</h2>
				<div class="stepWrap">
					<ol>
						<li></li>
						<li>옵션 선택</li>
						<li></li>
						
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
						<dd id="dateText"><%=session.getAttribute("resIn") %>&nbsp;금&nbsp; <!-- 요일 뽑아와야함.. -->
							-&nbsp;<%=session.getAttribute("resOut") %>&nbsp;토<span>1&nbsp;박</span></dd>
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
				<a href="<%=request.getContextPath() %>/step0.do" class="step0_btn">객실 다시 검색</a><br>
				----------------------------
			</div>
			
			<div class="option">
				
				<input type="hidden" id="resAdultBr" value="0">
				<input type="hidden" id="resChildBr" value="0">
				<input type="hidden" id="resBed" value="0">
				
				<h3 class="opTit">BREAKFAST</h3>
				<div class="addOption">
					<span class="txt">성인 조식 추가</span>&nbsp;&nbsp;|&nbsp;&nbsp;
					<span class="price">KRW 45,000</span>
					<input type="button" onclick="count('minus')" value="-"/>
					<div id="result" style="display: inline">0</div>
					<input type="button" onclick="count('plus')" value="+"/><br>
					
					<span class="txt">어린이 조식 추가</span>&nbsp;&nbsp;|&nbsp;&nbsp;
					<span class="price">KRW 27,000</span>
					<input type="button" onclick="count2('minus')" value="-"/>
					<div id="result2" style="display: inline">0</div>
					<input type="button" onclick="count2('plus')" value="+"/><br>
					
					<ul class="txtGuide">
						<li>투숙 일수와 동일한 횟수의 조식이 제공됩니다.</li>
						<li>인원 추가 금액에는 조식이 포함되어 있지 않습니다. 조식 추가 기능을 통해 별도로 추가가 가능합니다.</li>
						<li>어린이 조식 추가 비용 적용 대상은 37개월 이상 만 12세 이하입니다.</li>
						<li>사전 추가된 조식의 경우 특별요금이 적용된 혜택으로, 체크인 후 미사용 시 환불이 불가합니다.<!-- 사전 추가된 조식의 경우 특별요금이 적용된 혜택으로, 체크인 후 미사용 시 환불이 불가합니다. --></li>
						<li>코로나19에 따른 사회적 거리두기 정부 시책이 진행될 경우, 뷔페 조식은 다른 장소 및 단품 메뉴로 대체 제공될 수 있습니다.<!-- 코로나19에 따른 사회적 거리두기 정부 시책이 진행될 경우, 뷔페 조식은 다른 장소 및 단품 메뉴로 대체 제공될 수 있습니다. --></li>
					</ul>
				</div><br>
				
				<h3 class="opTit">EXTRA BED</h3>
				<div class="addOption" >
					<span class="txt">엑스트라 베드 추가</span>&nbsp;&nbsp;|&nbsp;&nbsp;
					<span class="price">KRW 44,000</span>
					<input type="button" onclick="count3('minus')" value="-"/>
					<div id="result3" style="display: inline">0</div>
					<input type="button" onclick="count3('plus')" value="+"/><br>
				</div>
				
			</div><!-- class="option" -->
			
		</div><!-- class="selResult" -->
		
		
		
	</form>
		
	
	<jsp:include page="../../include/footer.jsp" />
	
	
	
</body>
</html>