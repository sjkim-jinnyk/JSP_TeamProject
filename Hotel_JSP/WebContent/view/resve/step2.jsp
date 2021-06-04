<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="../../include/header.jsp" />
	
	<%-- step2.do : 옵션선택(조식추가 및 엑스트라 베드추가, 문의사항)--%>
	<section class="step2">
	<form method="post" action="<%=request.getContextPath() %>/step3.do">
		<input type="hidden" name="roomId" value="<%=request.getAttribute("roomId") %>">
		<input type="hidden" name="roomPrice" value="<%=request.getAttribute("roomPrice") %>">
		
		<h1>BOOKING</h1>
		<h3>Step 2 - 옵션 선택</h3><br>
		
		
		<div>
			<table border="1" width="80%" height="60px">
				<tr>
				    <td> DATE&nbsp;&nbsp; 
				    	<input type="date" id="checkIn" name="checkIn" 
				    		value="<%=request.getAttribute("checkIn") %>"> - 
				    	<input type="date" id="checkOut" name="checkOut" 
				    		value="<%=request.getAttribute("checkOut") %>">
						&nbsp;|&nbsp;<input id="night" size=3>박 <br> </td>
					<td>
						ADULTS 
						<input type="number" min="1" max="3" id="adult" name="adult" 
							value="<%=request.getAttribute("adult") %>"> 명
						&nbsp;&nbsp;&nbsp;&nbsp;
						CHILDREN 
						<input type="number" min="0" max="3" id="child" name="child" 
							value="<%=request.getAttribute("child") %>"> 명
					</td>
					<td><a href="javascript:history.go(-1);">객실 다시 검색 ></a></td>
				</tr>					
			</table>
			<br>
			<table border="1" width="80%" height="60px">
				<tr>
					<td><h3>[Member Exclusive] SMART CHOICE</h3>DELUXE / 1KING / STANDARD VIEW</td>
					<td rowspan="4">
					
						<jsp:useBean id="now" class="java.util.Date" />
						<fmt:formatDate value="${now}" pattern="yyyy.MM.dd" var="today" />
						${today }<br><br>

						금액 | <fmt:formatNumber value="${roomPrice }"/>&nbsp;KRW<br>
						<c:set var="tax" value="${roomPrice / 10}" />
						세금 |  <fmt:formatNumber value="${tax }" />&nbsp;KRW (10%)<br><br>
						<c:set var="total" value="${roomPrice + tax}" />
						총 예약금액 <fmt:formatNumber value="${total }"/>&nbsp;KRW<br><br>
						<input type="submit" value="예약하기">
						
						<input type="hidden" name="resDate" value="${today }">
						<input type="hidden" name="resTotal" value="${total }">
					</td>
				</tr>
				<tr>
					<td>
						BREAKFAST<br><br>
						성인 조식 추가  |   KRW 45,000&nbsp;&nbsp;
						<input type="number" id="adult_br" name="adult_br" min="0" max="3" value="0"> <br>
						어린이 조식 추가  |   KRW 27,000&nbsp;&nbsp;
						<input type="number" id="child_br" name="child_br" min="0" max="3" value="0"><br>
					</td>
				</tr>
				<tr>
					<td>
						EXTRA BED<br><br>엑스트라 베드 추가  |  KRW 44,000&nbsp;&nbsp;
						<input type="number" id="extraBed" name="extraBed" min="0" max="2" value="0"><br>
					</td>
				</tr>
				<tr>
					<td>
						문의사항<br>
						<textarea name="resRequest"  rows="5" cols="30"></textarea>				
					</td>
				</tr>
			</table>
		</div>
	</form>
	</section>
	
	<jsp:include page="../../include/footer.jsp" />
	
</body>
</html>