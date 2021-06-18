<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 예약 - 고객 정보 입력 | 조선호텔앤리조트</title>

<link rel="stylesheet" href="css/StepStyle.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</head>
<body>
	
	<jsp:include page="../../include/header.jsp" />
	
	
	<div class="res_cont" align="center">
		<div class="topArea">
			<div class="topInner">
				<h2 class="titDep1">Booking</h2>
				<div class="stepWrap">
					<ul>
						<li>
							 <span class="txt"><%=session.getAttribute("userName") %>님의 예약이 완료되었습니다.<br></span>
						</li>
						
					</ul>
				</div>
			</div>
		</div>
		
		
		
		<div class="btnGroup">
			<a href="#" class="btn">예약내역확인</a>
			<a href="<%=request.getContextPath() %>/index.do" class="btn">홈으로</a>
		</div>
		
	</div>
	
	
	<script type="text/javascript" src="js/res_step2.js"></script>
	<jsp:include page="../../include/footer.jsp" />
	
	
	
</body>
</html>