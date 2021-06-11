<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약내역</title>
</head>
<body>

	<link rel="stylesheet" href="css/MypageStyle.css">
	
	<jsp:include page="../../include/header.jsp" />

	<div class="myPage_header">
		<div>
			<h1 class="header_title">MY PAGE</h1>
			<p class="header_txt">멤버십 회원을 위한 다양한 혜택이 준비되어 있습니다.</p>
		</div>
	</div>
		
	<div class="myPage">
		<div class="myPage_inner">
			<div class="innerBox">
				<h3 class="inner_menu">예약확인</h3>
        		<ul class="menu_list">
            		<li class="munu_content"><a href="<%=request.getContextPath() %>/res_list.do" class="res">예약내역</a></li>
            		<li class="munu_content"><a href="<%=request.getContextPath() %>/res_change.do" class="res_change">예약변경</a></li>
        		</ul>
        
        		<h3 class="inner_menu">개인정보관리</h3>
        		<ul class="menu_list">
            		<li class="munu_content"><a href="<%=request.getContextPath() %>/info_update.do" class="login">회원 정보 수정</a></li>
            		<li class="munu_content"><a href="<%=request.getContextPath() %>/info_del.do" class="join">회원탈퇴</a></li>
        		</ul>
        	</div>
        </div>
        
        <div class="myPage_box">
			<p class="headline">예약확인</p>
			<div>
				<ul class="myPage_container">
					<li class="resListChg_on"><a href="<%=request.getContextPath() %>/res_list.do">예약내역</a></li>
					<li class="resListChg_off"><a href="<%=request.getContextPath() %>/res_change.do">예약변경</a></li>
				</ul>
			</div>
			
			<!-- 예약내역 리스트 -->
			<div>
				<table border="1" cellspacing="0">
				<tr>
					<th>예약날짜</th> <th>숙박 일정</th> <th>객실명</th> 
					<th>어른</th> <th>어린이</th> <th>총 가격</th> 
				</tr>
				
				<c:set var="list" value="${resList }" />
				<!-- 예약내역이 있는 경우 -->
				<c:if test="${!empty list }">
					<c:forEach items="${list }" var="dto">
						<tr>
							<td>${dto.getResDate().substring(0,10) }</td>
							<td>
								${dto.getResIn().substring(0,10) } - ${dto.getResOut().substring(0,10) }
							</td>
							<td>${dto.getRoomName() }</td>
							<td>${dto.getResAdult() }</td>
							<td>${dto.getResChild() }</td>
							<td><fmt:formatNumber value="${dto.getResTotal() }" />원</td>
						</tr>
					</c:forEach>
				</c:if>
				
				<!-- 예약내역이 없는 경우 -->
				<c:if test="${empty list }">
					<tr>
						<td colspan="6" align="center"> 
							<h3>!</h3><br>
							<h5>예약내역이 없습니다.</h5><br>
							<h5>ㅇㅇ호텔의 다양한 객실을 이용해보세요.</h5>
							<input type="button" value="예약하기" onclick="location.href='step0.do'">
						</td>
					</tr>
				</c:if>
				</table>
			</div>
		</div>
	</div>
	
    <jsp:include page="../../include/footer.jsp" />
	
</body>
</html>