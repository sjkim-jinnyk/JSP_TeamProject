<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="../../include/header.jsp" />
	
	<%-- step3.do : 예약자 정보 입력--%>
	<section class="step3">
		<h1>BOOKING</h1>
		<h3>Step 3 - 예약자 정보 입력</h3><br>
		
		
		<div>
			<table border="1" width="80%" height="60px">
				<tr>
				    <td> DATE&nbsp;&nbsp; <input type="date" id="checkIn" name="checkIn"> - <input type="date" id="checkOut" name="checkOut">
						&nbsp;|&nbsp;<input id="night" size=3>박 <br> </td>
					<td>
						ADULTS <input type="number" min="1" max="3" id="adult" name="adult" value="1"> 명 &nbsp;&nbsp;&nbsp;&nbsp;
						CHILDREN <input type="number" min="1" max="3" id="child" name="child" value="0"> 명
					</td>
					<td><a href="<%=request.getContextPath()%>/step2.do">객실 다시 검색 ></a></td>
				</tr>				
			</table>
			<br>
			<table border="1" width="80%" height="60px">
				<tr>
					<td><h3>[Member Exclusive] SMART CHOICE</h3>DELUXE / 1KING / STANDARD VIEW</td>
					<td rowspan="3">
						2021.06.01<br><br>
						금액 | 310,400<br>
						세금 | 31,040 (10%)<br><br>
						총 예약금액 341,440 KRW<br><br>
						<a href="<%=request.getContextPath()%>/step4.do">예약 완료</a>
						
					</td>
				</tr>
				<tr>
					
					<td>
						RESERVATION NAME *<br>
						이은수 (EUNSOO LEE) / FEMALE / 대한민국
						<br><br>
						PHONE NUMBER *<br>
						<input id="phone1" name="phone1" size="3" required> - 
						<input id="phone2" name="phone2" size="4" required> - 
						<input id="phone3" name="phone3" size="5" required>
						<br><br>
						E-MAIL *<br>
						<input id="email1" name="email1" size="20" required> @ 
						<input id="email2" name="email2" size="20" required>&nbsp;&nbsp;
						<select id="email3" name="email3">
							<option value="writeOp" selected>직접 입력</option>
							<option value="naver">naver.com</option>
							<option value="gmail">gmail.com</option>							
						</select>
						<br><br>
						<input type="checkbox" id="noShow" name="noShow">NO-SHOW 규정에 동의합니다. *
						
						
					</td>
				</tr>
			 </div>
		</table>
		
	<jsp:include page="../../include/footer.jsp" /><%-- 푸터 --%>
	
</body>
</html>