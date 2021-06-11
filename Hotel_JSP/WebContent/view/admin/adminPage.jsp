<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/AdminStyle.css">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<!-- 관리자페이지 상단 제목 -->
	<div class="admin_topArea">
		<h2 class="top_tit">관리자 페이지</h2>
	</div>
	
	<!-- 날짜로 객실 조회 -->
	<!-- <div class="admin_search">
		관리자 객실 검색
		<table class="hotel">
				<tr>
					<th></th><th>DATE</th><th>ROOMS</th>
					<td rows="2" class="search" align="center">
						<input type="button" id="search_btn" value="객실 검색">
					</td>
				</tr>
				<tr>
					<td>객실관리</td>
					<td>
						<input type="date" id="checkIn" name="checkIn"> - 
				    	<input type="date" id="checkOut" name="checkOut">
				    	
					</td>
					<td>
						<select name="roomName" id="roomName">
							<option value="STANDARD">STANDARD</option>
							<option value="DELUXE">DELUXE</option>
							<option value="SUITE">SUITE</option>
							<option value="PRESTIGE">PRESTIGE</option>
						</select>
					</td>
				</tr>
		</table>
		
		
		
	</div> -->
	
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
		<!-- 관리자 검색 -->
		<div class="admin_search">
			<!-- 관리자 객실 검색 -->
			<table id="hotel" class="use">
					<tr>
						<th>DATE</th><th>ROOMS</th>
						<td rowspan="2" class="search" align="center">
							<input type="button" id="search_btn" value="객실 검색">
						</td>
					</tr>
					<tr>
						
						<td>
							<input type="date" id="checkIn" name="checkIn"> - 
					    	<input type="date" id="checkOut" name="checkOut">
					    	
						</td>
						<td>
							<select name="roomName" id="roomName">
								<option value="STANDARD">STANDARD</option>
								<option value="DELUXE">DELUXE</option>
								<option value="SUITE">SUITE</option>
								<option value="PRESTIGE">PRESTIGE</option>
							</select>
						</td>
					</tr>
			</table>
			<!-- 관리자 예약 검색 -->
			<table id="user" class="off">
					<tr>
						<th>NAME</th><th>PHONE</th>
						<td rowspan="2" class="search" align="center">
							<input type="button" id="user_btn" value="예약 검색">
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" id="userName">
						</td>
						<td>
							<input type="text" id="userPhone">
					    	
						</td>
						
					</tr>
			</table>
		</div>
		
		<!-- 객실관리 페이지  -->
		<div class="room_manage">
			<!-- standard table -->
			<table id="standard" class="use" border="1">
				<tr>
					 <td class="img" rowspan="4"  width="40%" style="word-break:break-all">
						<img alt="상품" src="images/STANDARD.jpg">
					</td>
					<td id="standard_name" colspan="3" align="center">STANDARD</td>
				</tr> 
				<tr>
					<td id="101" width="20%" align="center">101</td>
					<td id="101_check" align="center"></td>
					<td width="20%" align="center">
						<input type="button" id="res_btn" value="RESERVATION">
					</td> 
				</tr>
				<tr>
					<td id="102" width="20%" align="center">102</td>
					<td id="102_check" align="center"></td>
					<td width="20%" align="center">
						<input type="button" id="res_btn" value="RESERVATION">
					</td> 
				</tr>
				<tr>
					<td id="103" width="20%" align="center">103</td>
					<td id="103_check" align="center"></td>
					
					
					<td width="20%" align="center">
						<input type="button" id="res_btn" value="RESERVATION">
					</td> 
				</tr>
			</table>
			
			<!-- deluxe table -->
			<table id="deluxe" class="use" border="1">
				<tr>
					 <td class="img" rowspan="4" width="40%" style="word-break:break-all">
						<img alt="상품" src="images/DELUXE.jpg">
					</td>
					<td id="deluxe_name" colspan="3" align="center">DELUXE</td>
				</tr> 
				<tr>
					<td id="201" width="20%" align="center">201</td>
					<td id="201_check" align="center"></td>
					<td width="20%" align="center">
						<input type="button" id="res_btn" value="RESERVATION">
					</td> 
				</tr>
				<tr>
					<td id="202" width="20%" align="center">202</td>
					<td id="202_check" align="center"></td>
					<td width="20%" align="center">
						<input type="button" id="res_btn" value="RESERVATION">
					</td> 
				</tr>
				<tr>
					<td id="203" width="20%" align="center">203</td>
					<td id="203_check" align="center"></td>
					
					<td width="20%" align="center">
						<input type="button" id="res_btn" value="RESERVATION">
					</td> 
				</tr>
			</table>
			<!-- suite table -->
			<table id="suite" class="use" border="1">
				<tr>
					 <td class="img" rowspan="4" width="40%" style="word-break:break-all">
						<img alt="상품" src="images/SUITE.jpg">
					</td>
					<td id="suite_name" colspan="3" align="center">SUITE</td>
				</tr> 
				<tr>
					<td id="301" width="20%" align="center">301</td>
					<td id="301_check" align="center"></td>
					<td width="20%" align="center">
						<input type="button" id="res_btn" value="RESERVATION">
					</td> 					
				</tr>
				<tr>
					<td id="302" width="20%" align="center">302</td>
					<td id="302_check" align="center"></td>
					<td width="20%" align="center">
						<input type="button" id="res_btn" value="RESERVATION">
					</td> 
				</tr>
				<tr>
					<td id="303" width="20%" align="center">303</td>
					<td id="303_check" align="center"></td>
					
					<td width="20%" align="center">
						<input type="button" id="res_btn" value="RESERVATION">
					</td> 
				</tr>
			</table>	
			
			<!-- prestige table -->
			<table id="prestige" class="use" border="1">
				<tr>
					 <td class="img" rowspan="4" width="40%" style="word-break:break-all">
						<img alt="상품" src="images/PRESTIGE.jpg">
					</td>
					<td id="prestige_name" colspan="3" align="center">PRESTIGE</td>
				</tr> 
				<tr>
					<td id="401" width="20%" align="center">401</td>
					<td id="401_check" align="center"></td>
					<td width="20%" align="center">
						<input type="button" id="res_btn" value="RESERVATION">
					</td> 
				</tr>
				<tr>
					<td id="402" width="20%" align="center">402</td>
					<td id="402_check" align="center"></td>
					<td width="20%" align="center">
						<input type="button" id="res_btn" value="RESERVATION">
					</td> 
				</tr>
				<tr>
					<td id="403" width="20%" align="center">403</td>
					<td id="403_check" align="center"></td>
					
					<td width="20%" align="center">
						<input type="button" id="res_btn" value="RESERVATION">
					</td> 
				</tr>
			</table>			
		</div>
		
		<!-- 객실 검색 눌렀을 때 -->
		<div class="room_search">
			<!-- standard search table -->
			<table id="search_standard" class="off" border="1">
				<tr>
					<td rowspan="10"  width="40%" style="word-break:break-all">
						<img alt="상품" src="images/STANDARD.jpg">
					</td>
					<td colspan="2" align="center">STANDARD</td>
				</tr>
				<tr id="content_standard">
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="button" id="check_st" value="상세보기">
					</td>
				</tr>
			</table>
			
			<!-- deluxe search table -->
			<table id="search_deluxe" class="off" border="1">
				<tr>
					<td rowspan="7"  width="40%" style="word-break:break-all">
						<img alt="상품" src="images/DELUXE.jpg">
					</td>
					<td colspan="2" align="center">DELUXE</td>
				</tr>
				<tr id="content_deluxe">
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="button" id="check_d" value="상세보기">
					</td>
				</tr>
			</table>
			
			<!-- suite search table -->
			<table id="search_suite" class="off" border="1">
				<tr>
					<td rowspan="7"  width="40%" style="word-break:break-all">
						<img alt="상품" src="images/SUITE.jpg">
					</td>
					<td colspan="2" align="center">SUITE</td>
				</tr>
				<tr id="content_suite">
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="button" id="check_su" value="상세보기">
					</td>
				</tr>
			</table>
			
			<!-- prestige search table -->
			<table id="search_prestige" class="off" border="1">
				<tr>
					<td rowspan="7"  width="40%" style="word-break:break-all">
						<img alt="상품" src="images/PRESTIGE.jpg">
					</td>
					<td colspan="2" align="center">PRESTIGE</td>
				</tr>
				<tr id="content_prestige">
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="button" id="check_p" value="상세보기">
					</td>
				</tr>
			</table>
			
			<!-- 상세페이지 -->
			<ul id="content_info_st" style="display:none;">
				<li id="101_cont">101호</li>
					<ul id ="101_ul"></ul>
			 	<li id="102_cont">102호</li>
			 		<ul id ="102_ul"></ul>
			 	<li id="103_cont">103호</li>
			 		<ul id ="103_ul"></ul>
			</ul>
			
			<ul id="content_info_d" style="display:none;">
			 	<li id="201_cont">201호</li>
			 		<ul id ="201_ul"></ul>
			 	<li id="202_cont">202호</li>
			 		<ul id ="202_ul"></ul>
			 	<li id="203_cont">203호</li>
			 		<ul id ="203_ul"></ul>
			</ul>
			<ul id="content_info_su" style="display:none;">
			 	<li id="301_cont">301호</li>
			 		<ul id ="301_ul"></ul>
			 	<li id="302_cont">302호</li>
			 		<ul id ="302_ul"></ul>
			 	<li id="303_cont">303호</li>
			 		<ul id ="303_ul"></ul>
			</ul>
			<ul id="content_info_p" style="display:none;">
			 	<li id="401_cont">401호</li>
			 		<ul id ="401_ul"></ul>
			 	<li id="402_cont">402호</li>
			 		<ul id ="402_ul"></ul>
			 	<li id="403_cont">403호</li>
			 		<ul id ="403_ul"></ul>
			</ul>
		</div>
		
		<!-- 예약관리 페이지  -->
		<div class="res_manage">
			<ul id="contArea2" class="off">
				
			</ul>
		</div>
	</div>
	<jsp:include page="/include/footer.jsp" />
	<script type="text/javascript" src="js/adminPage.js"></script>
</body>
</html>