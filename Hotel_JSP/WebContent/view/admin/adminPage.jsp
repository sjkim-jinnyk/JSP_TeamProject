<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/AdminStyle.css">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<!-- 관리자페이지 상단 제목 -->
	<div class="admin_topArea">
		<h2 class="top_tit">관리자 페이지</h2>
	</div>
	
	<!-- 날짜로 객실 조회 -->
	<div class="admin_search">
		<!-- 관리자 객실 검색 -->
		<form method="post" action="<%=request.getContextPath()%>/admin_room_search.do">
		<table class="hotel">
				<tr>
					<th>HOTEL</th><th>DATE</th><th>ROOMS</th>
					<!-- <th>ADULTS</th><th>CHILDREN</th> -->
					<td rows="2" class="search" align="center">
						<input type="button" value="객실 검색" onclick="">
					</td>
				</tr>
				<tr>
					<td>그랜드 조선 OO</td>
					<td>2021.06.19&nbsp;토</td>
					<td>
						<select name="roomName">
							<option value="객실 이름" name="D_TWIN">DELUXE TWIN</option>
							<option value="객실 이름" name="D_KING">DELUXE KING</option>
							<option value="객실 이름" name="PS_KING">PREMIER SUITE KING</option>
							<option value="객실 이름" name="PS_TWIN">PREMIER SUITE TWIN</option>
						</select>
					</td>
					<!-- <td>2</td>
					<td>3</td> -->
				</tr>
		</table>
		</form>
	</div>
	
	<!-- 객실, 예약, 매출 관리 -->
	<div class="admin_manage">
		<div class="titArea">
			<ul>
				<a id="room_click" href="#none"><li>객실관리</li></a>
				<a id="res_click" href="#none"><li>예약관리</li></a>
				<a href="#none"><li class="sales_manage">매출관리</li></a>
			</ul>
		</div>
		<!-- //titArea -->
		
		<!-- 객실관리 페이지  -->
		<div class="room_manage">
			<table id="contArea1" class="off">
				<tr>
					<td class="img" rowspan="3">
						<img alt="상품" src="image/객실.jpg">
					</td>
					<td colspan="2">DELUXE KING</td>
				</tr>
				<tr>
					<td colspan="2" align="left">
						Mountain View | Size: 46.7 m² <br>
						<a href="">객실 상세 보기</a>
					</td>
				</tr>
				<tr>
					<td><h2>475,300KRW~</h2><br>1박 / 세금 별도</td>
					<td><input type="button" id="check" value="CHECK" onclick="">
				</tr>
			</table>
			<!-- check 버튼 누르면 나오는 상세 페이지  -->
			<table class="content_info">
				<tr>
					<td>
						<strong>101호</strong>
						<p class="room_num">남은 객실</p>
					</td>
					<td>
						<a href="<%=request.getContextPath()%>/room_manage.do">관리</a>
					</td>
				</tr>	
			</table>
			<table id="contArea1" class="off">
				<tr>
					<td class="img" rowspan="3">
						<img alt="상품" src="image/객실.jpg">
					</td>
					<td colspan="2">DELUXE KING</td>
				</tr>
				<tr>
					<td colspan="2" align="left">
						Mountain View | Size: 46.7 m² <br>
						<a href="">객실 상세 보기</a>
					</td>
				</tr>
				<tr>
					<td><h2>475,300KRW~</h2><br>1박 / 세금 별도</td>
					<td><input type="button" value="CHECK" onclick="">
				</tr>
			</table>
		</div>
		
		<!-- 예약관리 페이지  -->
		<div class="res_manage">
			<table id="contArea2" class="off">
				<tr>
					<td class="img" rowspan="3">
						<img alt="상품" src="image/스마트.jpg">
					</td>
					<td colspan="2">AAAAA KING</td>
				</tr>
				<tr>
					<td colspan="2" align="left">
						Mountain View | Size: 46.7 m² <br>
						<a href="">객실 상세 보기</a>
					</td>
				</tr>
				<tr>
					<td><h2>475,300KRW~</h2><br>1박 / 세금 별도</td>
					<td><input type="button" id="check" value="CHECK" onclick="">
				</tr>
			</table>
			<!-- check 버튼 누르면 나오는 상세 페이지  -->
			<table class="content_info">
				<tr>
					<td>
						<strong>101호</strong>
						<p class="room_num">남은 객실</p>
					</td>
					<td>
						<a href="<%=request.getContextPath()%>/room_manage.do">관리</a>
					</td>
				</tr>	
			</table>

			<table id="contArea2" class="off">
				<tr>
					<td class="img" rowspan="3">
						<img alt="상품" src="image/스마트.jpg">
					</td>
					<td colspan="2">DELUXE KING</td>
				</tr>
				<tr>
					<td colspan="2" align="left">
						Mountain View | Size: 46.7 m² <br>
						<a href="">객실 상세 보기</a>
					</td>
				</tr>
				<tr>
					<td><h2>475,300KRW~</h2><br>1박 / 세금 별도</td>
					<td><input type="button" value="CHECK" onclick="">
				</tr>
			</table>
		</div>
	</div>
	<jsp:include page="/include/footer.jsp" />
	<script type="text/javascript" src="js/adminPage.js"></script>
</body>
</html>