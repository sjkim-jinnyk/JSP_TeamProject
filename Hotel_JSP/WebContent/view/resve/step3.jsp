<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- 헤더 --%>
	
	<%-- step2.do : 옵션선택(조식추가 및 엑스트라 베드추가, 문의사항)--%>
	<section class="step2">
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
					
					</td>
				</tr>
			 </div>
		</table>
	
	<%-- 푸터 --%>
</body>
</html>