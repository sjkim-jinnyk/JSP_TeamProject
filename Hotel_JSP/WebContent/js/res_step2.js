// 페이지 로딩하면 작동
$(document).ready( function(){
	
	// 토글 -------------------------------------------------
	$( '.total_toggle' ).click( function() {
    	$( '.toggleCont' ).toggle( 'slow' );
    });
	
	$( '.total_toggle' ).click( function() {
    	$( '.toggleCont' ).toggle( 'slow' );
    });

	
	// resDate (예약일-오늘) 구하기 -----------------------------
	let now = new Date(); // 현재 날짜 // resDate hidden 값
	let year = now.getFullYear();
	let month = now.getMonth() +1;
	let date = now.getDate();
	
	if(month < 10){
		month = '0' +month;
		if(date < 10){
			date = '0' +date;
		}
	}
	
	$("#resDate").val(now); // hidden 값
	
	let rDateResult = document.getElementById('rDateResult'); // 총액 부분 표시값
	rDateResult.innerText = year+ '.' +month+ '.' +date;
	
	
	// resTotal 총액 구하기 -----------------------------
	let roomPrice = document.getElementById('roomPrice'); // 세션으로 넘어온 방 가격 (hidden)
	
});


//어른 조식 증감
function count(type)  {
  // 결과를 표시할 element
  let resultElement = document.getElementById('result'); // +- 버튼 안쪽 숫자
  let aBrResult =  document.getElementById('aBrResult'); // total 영역 표시부분 
  let resAdultBr =  document.getElementById('resAdultBr'); // hidden 값
  
  // 현재 화면에 표시된 값
  let number = resultElement.innerText;
  
  // 더하기/빼기
  if(type === 'plus') {
	  if(number <= 3){
		   number = parseInt(number) +1;
		   resAdultBr.value = number;
	  }	 
  }else if(type === 'minus')  {
	  if(number >= 1) {
		  number = parseInt(number) - 1;
		  resAdultBr.value = number;
	  }		    
  }
  
  // 결과 출력	  
  resultElement.innerText = number;
  aBrResult.innerText = number;
  
} // count() end 

// 어린이 조식 증감
function count2(type)  {
  // 결과를 표시할 element
  let resultElement = document.getElementById('result2'); // +- 버튼 안쪽 숫자
  let cBrResult =  document.getElementById('cBrResult'); // total 영역 표시부분 
  let resChildBr =  document.getElementById('resChildBr'); // hidden 값

  
  // 현재 화면에 표시된 값
  let number = resultElement.innerText;
  
  // 더하기/빼기
  if(type === 'plus') {
	  if(number <= 3){
		   number = parseInt(number) +1;
		   resChildBr.value = number;
	  }	 
  }else if(type === 'minus')  {
	  if(number >= 1) {
		  number = parseInt(number) - 1;
		  resChildBr.value = number;
	  }		    
  }
  
  // 결과 출력	  
  resultElement.innerText = number;	
  cBrResult.innerText = number;
} // count2() end

// 엑스트라베드 증감
function count3(type)  {
  // 결과를 표시할 element
  let resultElement = document.getElementById('result3'); // +- 버튼 안쪽 숫자
  let bedResult =  document.getElementById('bedResult'); // total 영역 표시부분 
  let resBed =  document.getElementById('resBed'); // hidden 값

  
  // 현재 화면에 표시된 값
  let number = resultElement.innerText;
  
  // 더하기/빼기
  if(type === 'plus') {
	  if(number == 0){
		   number = parseInt(number) +1;
		   resBed.value = number;
	  }	 
  }else if(type === 'minus')  {
	  if(number >= 1) {
		  number = parseInt(number) - 1;
		  resBed.value = number;
	  }		    
  }
  
  // 결과 출력	  
  resultElement.innerText = number;	
  bedResult.innerText = number;
} // count2() end




