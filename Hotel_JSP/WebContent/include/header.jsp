<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link rel="stylesheet" href="css/CommonStyle.css">
<link rel="stylesheet" href="css/MainStyle.css">
<link rel="stylesheet" href="css/HeaderStyle.css">
<link rel="stylesheet" href="css/FooterStyle.css">
<script src="https://kit.fontawesome.com/57a8fee989.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>
    <header>
        <div class="logo">
	        <div class="menuslide">
	            <button class="menubar">
	                <i class="fas fa-stream"></i>
	
	            </button>
	            <div class="allMenu">
					<ul class="List">
						<li class="name">ABOUT US
							<ul class="innerMenu">
								<li>기업소개</li>
								<li>연혁</li>
								<li>오시는길</li>
							</ul>
						</li>
						<li class="name">OFFERS
							<ul class="innerMenu">
								<li>공지사항</li>
							</ul>
						</li>
						<li class="name">MY PAGE
							<ul class="innerMenu">
								<li>MY PAGE</li>
								<li>MY POINT</li>
								<li>MY COUPON</li>
								<li>예약확인</li>
								<li>개인정보관리</li>
							</ul>
						</li>
						<li class="name">CUSTOMER SERVICE
							<ul class="innerMenu">
								<li>Q&A</li>
								<li>FAQ</li>
							</ul>
						</li>
					</ul>
	            
	            </div>
            </div>
            
            <a href="<%=request.getContextPath() %>/index.do" class="sitename">OO Hotel</a>
        </div>

        <div class="menu">
            <ul>
                <li><a href="<%=request.getContextPath() %>/login.do" class="login">로그인</a></li>
                <li><a href="<%=request.getContextPath() %>/join.do" class="join">회원가입</a></li>
                <li><a href="" class="res_check">예약확인</a></li>
            </ul>
            
            <input type="button" class="res_btn" value="RESERVATION" onclick="location.href='step0.do'" >
            
        </div>
    </header>   
 </body>
</html>

