<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 모바일에서 화면배율을 디바이스 크기 기준으로 설정 -->
<!-- 이게 안되면 pc에서의 100px과 모바일에서의 100px이 디바이스 성능에 따라 달라집니다. -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/CommonStyle.css">
<link rel="stylesheet" href="css/MainStyle.css">
<link rel="stylesheet" href="css/HeaderStyle.css">
<link rel="stylesheet" href="css/FooterStyle.css">
<link rel="stylesheet" href="madal_pop.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"
    />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.0/jquery-ui.min.js"></script>
<script type="text/javascript" src="jqery.bpopup-0.1.1.min.js"></script>
</head>
<body>
    <header class="headerBox">
        <div class="top-bar text-align-center line-height-0-ch-only">
	                <i class="fas fa-stream"></i>
        	<nav class="menu-box inline-block">
					<ul class="row">
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
								<!-- 세션값으로 로그인 상태를 판단해 'MY PAGE'메뉴 클릭 시 로그인 or 마이페이지 이동 작업 -->
								<%
									// 세션값 받아오기
									String userName = (String)session.getAttribute("userName");
								
									if(userName == null) {	// 로그인 상태 X => 로그인 페이지로 이동
								%>
										<li><a href="<%=request.getContextPath() %>/login.do">MY PAGE</a></li>
								<%
									} else {  // 로그인 상태 O => 마이 페이지로 이동
								%>
										<li><a href="<%=request.getContextPath() %>/mypage_main.do">MY PAGE</a></li>
								<%
									}
								%>
								<li>MY POINT</li>
								<li>MY COUPON</li>
								<li>예약확인</li>
								<li>개인정보관리</li>
							</ul>
						</li>
						<li class="name">CUSTOMER SERVICE
							<ul class="innerMenu">
								<a href="<%=request.getContextPath() %>/QnA.do"><li>Q&A</li></a>
								<li>FAQ</li>
							</ul>
						</li>
					</ul>
					</nav>
	            	<div class="menu-box-bg"></div>
  					<div class="sub-menu-bar-bg"></div>
	            </div>
        <div class="hotel_logo">
            <a href="<%=request.getContextPath() %>/index.do" class="sitename">OO Hotel</a>
        </div>

        <div class="menu">
            <ul>
            	<!-- 세션값으로 로그인 상태를 판단해 헤더 메뉴 변경 작업 -->
            	<%
            		if(userName == null) { // 로그인 상태 X
            			response.sendRedirect("loginForm.jsp");	
            	%>
                		<li><a href="<%=request.getContextPath() %>/login.do" class="login">로그인</a></li>
                		<li><a href="<%=request.getContextPath() %>/join.do" class="join">회원가입</a></li> 
                		<li><a href="" class="res_check">예약확인</a></li>
                <% 
            		} else { // 로그인 상태 O
                %>
                		<li><a href="<%=request.getContextPath() %>/mypage_main.do" class="login">마이페이지</a></li>
                		<li><a href="<%=request.getContextPath() %>/user_logout.do" class="join">로그아웃</a></li> 
                		<li><a href="" class="res_check">예약확인</a></li>
                <%
            		}
                %>
                
            </ul>
            
            <input type="button" class="res_btn" value="RESERVATION" onclick="location.href='step0.do'" >
            
            <%System.out.println((String)session.getAttribute("userId")); %>
        </div>
    </header>

