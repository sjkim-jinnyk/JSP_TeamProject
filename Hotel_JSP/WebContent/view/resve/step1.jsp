font: 500 18px/1 notokrR;
    letter-spacing: -.025em;<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	
	<jsp:include page="../../include/header.jsp" />
	
	
	<%-- step1.do : 객실 선택 폼 --%>
	<section class="step1">
		<h1>BOOKING</h1>
		<h3>Step 1 - 객실 선택</h3><br>
		
		
		<div>
		<form method="post" action="<%=request.getContextPath() %>/step2.do">
			<input type="hidden" name="roomId" value="101">
			<input type="hidden" name="roomPrice" value="310400">
			
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
			<table border="1" width="80%">
				<tr>
					<td width="300px"><img alt="" src="../../image/resve01.jpg" width="300px"></td>
					<td>
						[Member Exclusive] SMART CHOICE<br>
						클럽 조선 리워드 회원분들을 위한 추가 3% 할인 혜택!<br><br><br>
						<h3>310,400KRW ~</h3><br>
						1박 / 세금 별도
					</td>
				</tr>
			</table>
			<br>
			<table border="1" width="80%">
				<tr>
					<td>DELUXE KING<br>Standard View | Size: 46.7㎡</td>
					<td>310,400KRW ~</td>
					<td><input type="submit" value="예약하기"></td>
				</tr>
			
			</table>
		</form>	
		</div>
	
	</section>
	
	<jsp:include page="../../include/footer.jsp" />
	

</body>
</html>