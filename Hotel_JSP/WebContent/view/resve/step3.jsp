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
	
	<%-- step3.do : 예약자 정보 입력--%>
	<section class="step3">
	<form method="post" action="<%=request.getContextPath() %>/step4.do">
		<h1>BOOKING</h1>
		<h3>Step 3 - 예약자 정보 입력</h3><br>
		
		
		<div>
			<table border="1" width="80%" height="60px">
				<tr>
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
				</tr>				
			</table>
			<br>
			<table border="1" width="80%" height="60px">
				<tr>
					<td><h3>[Member Exclusive] SMART CHOICE</h3>DELUXE / 1KING / STANDARD VIEW</td>
					<td rowspan="3">
						<c:set var="resDate" value="${resDate }" />
						<c:set var="roomPrice" value="${roomPrice }" />
						<c:set var="tax" value="${tax}" />
						<c:set var="resTotal" value="${resTotal}" />
						
						<br><br>
						<c:out value="${resDate }" /><br><br>
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
						RESERVATION NAME *<br>
						<%--${dto.getUserName() } --%>홍길동
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
				</table>
		 </div>
		</form>
	</section>
		
	<jsp:include page="../../include/footer.jsp" /><%-- 푸터 --%>
	
</body>
</html>