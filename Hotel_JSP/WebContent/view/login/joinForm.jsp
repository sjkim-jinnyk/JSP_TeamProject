<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
	
<link rel="stylesheet" href="css/LoginStyle.css">
	<jsp:include page="../../include/header.jsp" />
	
	<div class="join_inner">
		<div class="joinBox">
		 	<h1 class="sign_title">join now</h1>
		</div>
		<form method="post" action="<%=request.getContextPath() %>/user_join_ok.do">
			<input type="hidden" name="userDate" value="sysdate">	<!-- 가입일자 hidden으로 넘겨주기 -->		
		  <div class="joinInfo">
		   <div class="userJoin">
			<ul>
				<li><font size="2" color="red">*필수정보 입력</font></li>
				<br>
				<li>NAME* <br>
				<input type="text" class="joinTxt" name="userName" required></li>
				<li>ID* <br><input type="text" class="joinTxt" name="userId"> 
						<input type="button" class="joinFormBtn" name="userId_check" value="중복확인" required>
				</li>
				<li>PASSWORD* <br><input type="password" class="joinTxt" name="userPwd" min="6" size="15" placeholder="영문/숫자/특수문자 포함 6자 이상" required></li>
				<li>CONFIRM PASSWORD* <br><input type="password" class="joinTxt" name="userPwd_check" min="6" size="15" placeholder="영문/숫자/특수문자 포함 6자 이상" required></li>
				<li>GENDER <br><input type="radio" name="userGen" value="남성">남성
					  	   <input type="radio" name="userGen" value="여성">여성
				</li>
				<li>PHONE<br>  <!-- <select>
								<option value="010">010</option>
								<option value="02">02</option>
								<option value="032">032</option>
								<option value="031">031</option>
							</select> -->
							<input type="tel" class="joinTxt" name="userPhone" placeholder="'-'제외하고 입력해주세요.">
				</li>
				<li>ADDRESS<br>
					<input type="text" class="joinTxt" id="sample4_postcode" placeholder="우편번호">
					<input type="button" class="joinFormBtn" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" class="joinTxt" id="sample4_roadAddress" placeholder="도로명주소">
					<input type="text" class="joinTxt" id="sample4_jibunAddress" placeholder="지번주소">
					<span id="guide" style="color:#999;display:none"></span>
					<input type="text" class="joinTxt" id="sample4_detailAddress" placeholder="상세주소">
					<input type="text" class="joinTxt" id="sample4_extraAddress" placeholder="참고항목">
				</li>
				<li>E-MAIL <br><input type="text" class="joinTxt" name="userEmail_1" placeholder="이메일 입력해주세요.">		
						   <span>@</span>
						   <select name="userEmail_2">
						  		<option value="" disabled selected>::E-Mail 선택::</option>
						  		<option value="naver">naver.com</option>
						  		<option value="daum">daum.net</option>
						  		<option value="gmial">gmail.com</option>
						  		<option value="hamail">hanmail.net</option>
						  		<option value="nate">nate.com</option>
						   </select>
				</li>
				<li>POINT <br><input type="text" class="joinTxt" name="userPoint">p</li>   <!-- ★String으로 받아오는지? -->
				<br>
				<li> <input type="submit" class="join_submit" value="회원가입"> &nbsp;
					 <input type="reset" class="join_submit" value="취소">
				</li>
			</ul>
			</div>
		   </div>
		</form>
	</div>
	
	<!-- 주소 API 스크립트 -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
    	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    	function sample4_execDaumPostcode() {
       	 new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
      	  }).open();
   	 }
	</script>
	<jsp:include page="../../include/footer.jsp" />
	
</body>
</html>