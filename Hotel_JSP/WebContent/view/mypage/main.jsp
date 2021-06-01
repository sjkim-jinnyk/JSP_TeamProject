<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<header class="headline">
        <button class="menu">
            <i class="fas fa-stream"></i>
        </button>
        
        <a href="<%=request.getContextPath() %>/index.do" class="sitename">OO Hotel</a>
		<br><br>
		
		<h1>MY PAGE</h1>
		<br><br>
		
		<h3>예약확인</h3>
        <ul>
            <li><a href="<%=request.getContextPath() %>/view/mypage/res.jsp" class="res">예약내역</a></li>
            <li><a href="<%=request.getContextPath() %>/view/mypage/res_change" class="res_change">예약변경</a></li>
        </ul>
        
        <h3>개인정보관리</h3>
        <ul>
            <li><a href="<%=request.getContextPath() %>/view/mypage/info_update" class="login">회원 정보 수정</a></li>
            <li><a href="<%=request.getContextPath() %>/view/mypage/info_del" class="join">회원탈퇴</a></li>
        </ul>
    </header>

    <section class="mainpage">
        <h1>ㅇㅇ님 환영합니다.</h1>
        <h1>1000 p</h1>
    </section>
    
    <footer>
        <a href="" class="sitename">OO Hotel</a>

        <div class="footer">
            <ul class="policy">
                <li>고객센터</li>
                <li>이용약관</li>
                <li>개인정보처리방침</li>
            </ul>
            <div class="info">
                <address>서울시 마포구 월드컵로</address>
                <p class="ceo">CEO : 김OO</p>
                <p class="tel">T. 02-1234-1234</p>
                <p class="copyright">©2020 JOSUN HOTELS & RESORTS Co. All rights</p>
            </div>
        </div>
    </footer>

</body>
</html>