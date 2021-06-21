<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약내역</title>
	<link rel="stylesheet" href="css/MypageStyle.css">
	
	<jsp:include page="../../include/header.jsp" />

	<div class="myPage_header">
		<div>
			<h1 class="header_title">My Page</h1>
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
            		<li class="munu_content"><a href="<%=request.getContextPath() %>/pwd_update.do" class="login">비밀번호 수정</a></li>
            		<li class="munu_content"><a href="<%=request.getContextPath() %>/info_del.do" class="join">회원탈퇴</a></li>
        		</ul>
        	</div>
        </div>
        
        <div class="myPage_box">
        	<div class="myPage_box_inner">
			<p class="headline">예약확인</p>
			<div>
				<ul class="myPage_container">
					<li class="resListChg_off"><a href="<%=request.getContextPath() %>/res_list.do">예약내역</a></li>
					<li class="resListChg_on"><a href="<%=request.getContextPath() %>/res_change.do">예약변경</a></li>
				</ul>
			</div>
			
			<!-- 예약내역 리스트 -->
			<div class="resList_box">
				<c:set var="count" value="${resCount }" />
				<div class="resCount">
					<span>총 <em>${count }</em>건</span>
				</div>
				
				<div class="res_Container">
				<!-- 예약내역이 있는 경우 -->
				<c:set var="list" value="${resList }" />
				<c:if test="${!empty list }">
					<c:forEach items="${list }" var="dto">
					<ul class="res_content">
						<li class="reserved">RESERVED</li>
						<li>[ ${dto.getRoomName() } ]</li>
						<li class="res_info">
							예약번호 ${dto.getResNo() } / 성인 ${dto.getResAdult() },어린이${dto.getResChild() } / 총 예약금액 <fmt:formatNumber value="${dto.getResTotal() }" />원
						</li>
						<li class="res_margin">
							${dto.getResIn().substring(0,10) } - ${dto.getResOut().substring(0,10) }
							<input type="button" class="resChng_btn" value="예약변경" onclick="location.href='res_change_ok.do?no=${dto.getResNo() }&roomNo=${dto.getRoomNumber() }'">
						</li>
					</ul>
					</c:forEach>
				</c:if>
				
				<!-- 예약내역이 없는 경우 -->
				<c:if test="${empty list }">
					<div class="noRes_box">
						<ul class="noRes_inner">
							<li class="noRes_Point">!</li>
							<li>예약내역이 없습니다.</li>
							<li>Hemas 호텔의 다양한 객실을 이용해보세요.</li>
							<li><input type="button" class="goMain_btn" value="예약하기" onclick="location.href='step0.do'"></li>
						</ul>
					</div>
				</c:if>
			  </div>
			</div>
		  </div>
		</div>
	</div>
	
    <jsp:include page="../../include/footer.jsp" />
	
</body>
</html>