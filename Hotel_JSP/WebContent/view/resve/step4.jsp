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
	
	<%-- step4.do : 옵션선택(조식추가 및 엑스트라 베드추가, 문의사항)--%>
	<section class="step4">
		<h1>BOOKING</h1>
		
		<div align="center">
			<h3>예약이 완료되었습니다.</h3><br><br>
			<a href="<%=request.getContextPath()%>/#.do">예약내역 확인하기</a>&nbsp;&nbsp;&nbsp;
			<a href="<%=request.getContextPath()%>/index.do">메인으로</a>
		</div>
	
	<%-- 푸터 --%>
	
</body>
</html>