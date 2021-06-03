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
	
	<%-- step0.do : 날짜, 인원 선택 폼 --%>
	<section class="step0">
	<form method="post"
	      action="<%=request.getContextPath() %>/step1.do">
		<h1>BOOKING</h1>
		<h3>Step 1 - 날짜, 인원 선택</h3><br>
		
		<table border="1" width="80%" height="60px">
				<tr>
				    <td> DATE&nbsp;&nbsp; 
				    	<input type="date" id="checkIn" name="checkIn"> - 
				    	<input type="date" id="checkOut" name="checkOut">
				    	&nbsp;|&nbsp;
				    	<input id="night" name="night" size=2 >박 <br> </td>
					<td>
						ADULTS <input type="number" min="1" max="3" id="adult" name="adult" value="1"> 명 &nbsp;&nbsp;&nbsp;&nbsp;
						CHILDREN <input type="number" min="0" max="3" id="child" name="child" value="0"> 명
					</td>
					<td><input type="submit" value="객실 검색"></td>
				</tr>				
		</table>
	</form>
	<a href="<%=request.getContextPath()%>/step1.do">객실 검색</a>
	</section>
	
	<jsp:include page="../../include/footer.jsp" />
	
</body>

</html>