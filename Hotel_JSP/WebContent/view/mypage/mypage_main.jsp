<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
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
            		<li class="munu_content"><a href="<%=request.getContextPath() %>/view/mypage/res.jsp" class="res">예약내역</a></li>
            		<li class="munu_content"><a href="<%=request.getContextPath() %>/view/mypage/res_change.jsp" class="res_change">예약변경</a></li>
        		</ul>
        
        		<h3 class="inner_menu">개인정보관리</h3>
        		<ul class="menu_list">
            		<li class="munu_content"><a href="<%=request.getContextPath() %>/view/mypage/info_update.jsp" class="login">회원 정보 수정</a></li>
            		<li class="munu_content"><a href="<%=request.getContextPath() %>/view/mypage/info_del.jsp" class="join">회원탈퇴</a></li>
        		</ul>
        	</div>
        </div>
        
        <div class="mainpage">
        	<div class="userInfo">
        		<h1>ㅇㅇ님 환영합니다.</h1>
        		<h1>1000 p</h1>
        	</div>
        </div>
    </div>

    <jsp:include page="../../include/footer.jsp" />

</body>
</html>