<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>

	<link rel="stylesheet" href="css/MypageStyle.css">
	
	<jsp:include page="../../include/header.jsp" />

	<div class="myPage_header">
		<div class="top_Area">
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
        
        <div class="mainpage">
        	<div class="mainpage_box">
        		<c:set var="count" value="${resCount }" />
        		<div class="welcom_msg">
        			<span style="color: #989442;">${userName }</span>님 환영합니다.
        		</div>
        		<div class="resPoint_box">
        			<ul class="resPoint_count">
        				<li>현재 예약 건수</li>
        				<li><span class="mypageCount">${count }</span> 개</li>
        			</ul>
        			<ul class="resPoint_point">
        				<li>잔여 포인트</li>
        				<li><span class="mypageCount">${userPoint }</span> p</li>
        			</ul>
        		</div>
        	</div>
        </div>
    </div>

    <jsp:include page="../../include/footer.jsp" />

</body>
</html>