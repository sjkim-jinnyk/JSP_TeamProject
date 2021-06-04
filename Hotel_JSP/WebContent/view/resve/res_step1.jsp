<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<jsp:include page="../../include/header.jsp" />
	
	<form action="" name="step1Form" id="step1Form" method="post">
	
		<div class="topArea">
			<div class="topInner">
				<h2 class="titDep1">Booking</h2>
				<div class="stepWrap">
					<ol>
						<li class="on">
							 객실, 요금 선택
						</li>
						<li></li>
						<li></li>
						
					</ol>
				</div>
			</div>
		</div>
		<!-- //topArea -->
		<div class="selResult">
			<div class="inner">
				<div class="infoArea">
					<dl class="date_num">
						<dt>HOTEL</dt>
						<dd>그랜드 조선 제주</dd>
					</dl>
					<dl class="date">
						<dt>DATE</dt>
						<dd id="dateText"><%=request.getAttribute("resIn") %>&nbsp;금&nbsp; <!-- 요일 뽑아와야함.. -->
							-&nbsp;<%=request.getAttribute("resOut") %>&nbsp;토<span>1&nbsp;박</span></dd>
					</dl>
					<dl class="adults">
						<dt>ADULTS</dt>
						<dd>2</dd>
					</dl>
					<dl class="children">
						<dt>CHILDREN</dt>
						<dd>0</dd>
					</dl>
				</div>
				<a href="#none" class="btnSC btnM icoArr" onclick="fncResvReset();">객실 다시 검색</a>
			</div>
		</div>
		
	</form>
	
	<jsp:include page="../../include/footer.jsp" />
	
</body>
</html>