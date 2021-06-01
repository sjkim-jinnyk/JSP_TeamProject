<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/57a8fee989.js" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
	<header class="headline">
        <button class="menu">
            <i class="fas fa-stream"></i>
        </button>
        
        <a href="<%=request.getContextPath() %>/index.do" class="sitename">OO Hotel</a>

        <ul>
            <li><a href="<%=request.getContextPath() %>/login.do" class="login">로그인</a></li>
            <li><a href="<%=request.getContextPath() %>/join.do" class="join">회원가입</a></li>
            <li><a href="" class="res_check">예약확인</a></li>
        </ul>
        
        <input type="button" class="res_btn" value="reservation" onclick="location.href='step0.do'" >
        
    </header>

    <section class="mainpage">
        <h1>Experience the Difference</h1>
        <div class="reservation">
            <ul>
                <li class="check_InOut">
                    <label for="check_InOut">CHECK IN/OUT</label>
                    <input type="date" id="check_InOut" name="check_InOut">
                </li>

                <li></li>
                <li></li>
            </ul>


        </div>
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