<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link rel="stylesheet" href="css/CommonStyle.css">
<link rel="stylesheet" href="css/HeaderStyle.css">
<link rel="stylesheet" href="css/FooterStyle.css">
<script src="https://kit.fontawesome.com/57a8fee989.js" crossorigin="anonymous"></script>
</head>
<body>
    <header>
        <div class="logo">
            <button class="menubar">
                <i class="fas fa-stream"></i>
            </button>
            
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
