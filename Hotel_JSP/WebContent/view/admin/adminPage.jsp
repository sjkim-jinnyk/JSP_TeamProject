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
		<h2 class="top_tit">ADMIN PAGE</h2>
	</div>
	
	<!-- 객실, 예약, 매출 관리 -->
	<div class="admin_manage">
		<div class="titArea">
			<ul>
				<a id="room_click" class="on" href="#none" ><li>객실관리</li></a>
				<a id="res_click" class="off" href="#none"><li>예약관리</li></a>
				<a id="member_click" class="off" href="#none"><li>회원관리</li></a>
				
			</ul>
		</div>
		<!-- //titArea -->
		
		<!-- 관리자 검색 -->
		<div class="admin_search">
			<!-- 관리자 객실 검색 -->
			<table id="hotel" class="use">
					<tr>
						<td>DATE</td><td id="bin" colspan="3">ROOMS</td>
						<td rowspan="2" align="center">
							<input type="button" id="search_btn" value="객실 검색 >">
						</td>
					</tr>
					<tr>
						
						<td>
							<input type="date" id="checkIn" name="checkIn"> - 
					    	<input type="date" id="checkOut" name="checkOut">
					    	
						</td>
						<td id="bin"></td>
						
						
						<td>
							<select name="roomName" id="roomName">
								<option value="STANDARD">STANDARD</option>
								<option value="DELUXE">DELUXE</option>
								<option value="SUITE">SUITE</option>
								<option value="PRESTIGE">PRESTIGE</option>
							</select>
						</td>
						
						<td id="bin"></td>
					</tr>
			</table>
			<!-- 관리자 예약 검색 -->
			<table id="user" class="off">
					<tr>
						<th>NAME</th><th>PHONE</th>
						<td rowspan="2" align="center">
							<input type="button" id="user_btn" value="예약 검색 >">
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
			<!-- 관리자 회원 검색 -->
			<table id="member" class="off">
					<tr>
						<th>ID</th><th>PHONE</th>
						<td rowspan="2" align="center">
							<input type="button" id="member_btn" value="회원 검색 >">
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" id="memberID">
						</td>
						<td>
							<input type="text" id="memberPhone">
					    	
						</td>
						
					</tr>
			</table>
		</div>
		
		<!-- 객실관리 페이지  -->
		<div class="room_manage">
			<!-- standard table -->
			<table id="standard" class="use" >
				<tr class="roomname">
					<td id="standard_name">STANDARD</td>
				</tr>
				<tr>
					 <td class="img" rowspan="4" width="40%" style="word-break:break-all">
						<img alt="상품" src="images/STANDARD.jpg">
					</td>
					
				</tr> 
				<tr>
					<td id="101" width="20%">101</td>
					<td id="101_check"></td>
					<td width="20%">
						<input type="button" id="res_btn" value="RESERVE">
					</td> 
				</tr>
				<tr>
					<td id="102" width="20%">102</td>
					<td id="102_check"></td>
					<td width="20%">
						<input type="button" id="res_btn" value="RESERVE"> 
					</td> 
				</tr>
				<tr>
					<td id="103" width="20%">103</td>
					<td id="103_check"></td>
					
					
					<td width="20%">
						<input type="button" id="res_btn" value="RESERVE">
					</td> 
				</tr>
			</table>
			<!-- deluxe table -->
			<table id="deluxe" class="use">
				<tr class="roomname">
					<td id="deluxe_name">DELUXE</td>
				</tr>
				<tr>
					 <td class="img" rowspan="4" width="40%" style="word-break:break-all">
						<img alt="상품" src="images/DELUXE.jpg">
					</td>
				</tr> 
				<tr>
					<td id="201" width="20%">201</td>
					<td id="201_check"></td>
					<td width="20%">
						<input type="button" id="res_btn" value="RESERVE">
					</td> 
				</tr>
				<tr>
					<td id="202" width="20%">202</td>
					<td id="202_check"></td>
					<td width="20%">
						<input type="button" id="res_btn" value="RESERVE">
					</td> 
				</tr>
				<tr>
					<td id="203" width="20%">203</td>
					<td id="203_check"></td>
					
					<td width="20%">
						<input type="button" id="res_btn" value="RESERVE">
					</td> 
				</tr>
			</table>
			<!-- suite table -->
			<table id="suite" class="use">
				<tr class="roomname">
					<td id="suite_name">SUITE</td>
				</tr>
				<tr>
					 <td class="img" rowspan="4" width="40%" style="word-break:break-all">
						<img alt="상품" src="images/SUITE.jpg">
					</td>
				</tr> 
				<tr>
					<td id="301" width="20%">301</td>
					<td id="301_check"></td>
					<td width="20%">
						<input type="button" id="res_btn" value="RESERVE">
					</td> 					
				</tr>
				<tr>
					<td id="302" width="20%">302</td>
					<td id="302_check"></td>
					<td width="20%">
						<input type="button" id="res_btn" value="RESERVE">
					</td> 
				</tr>
				<tr>
					<td id="303" width="20%">303</td>
					<td id="303_check"></td>
					
					<td width="20%">
						<input type="button" id="res_btn" value="RESERVE">
					</td> 
				</tr>
			</table>	
			
			<!-- prestige table -->
			<table id="prestige" class="use">
				<tr class="roomname">
					<td id="prestige_name">PRESTIGE</td>
				</tr>
				<tr>
					 <td class="img" rowspan="4" width="40%" style="word-break:break-all">
						<img alt="상품" src="images/PRESTIGE.jpg">
					</td>
				</tr> 
				<tr>
					<td id="401" width="20%">401</td>
					<td id="401_check"></td>
					<td width="20%">
						<input type="button" id="res_btn" value="RESERVE">
					</td> 
				</tr>
				<tr>
					<td id="402" width="20%">402</td>
					<td id="402_check"></td>
					<td width="20%">
						<input type="button" id="res_btn" value="RESERVE">
					</td> 
				</tr>
				<tr>
					<td id="403" width="20%">403</td>
					<td id="403_check"></td>
					
					<td width="20%">
						<input type="button" id="res_btn" value="RESERVE">
					</td> 
				</tr>
			</table>			
		</div>
		
		<!-- 객실 검색 눌렀을 때 -->
		<div class="room_search">
			<!-- standard search table -->
			<table id="search_standard" class="off">
				<tr class="roomname">
					<td>STANDARD</td>
				</tr>
				<tr>
					<td class="img" rowspan="10"  width="40%" style="word-break:break-all">
						<img alt="상품" src="images/STANDARD.jpg">
					</td>
				</tr>
	
				<tr id="content_standard">
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" id="check_st" value="상세보기">
					</td>
				</tr>
			</table>
			
			<!-- deluxe search table -->
			<table id="search_deluxe" class="off">
				<tr class="roomname">
					<td>DELUXE</td>
				</tr>
				<tr>
					<td class="img" rowspan="7"  width="40%" style="word-break:break-all">
						<img alt="상품" src="images/DELUXE.jpg">
					</td>
				</tr>
				<tr id="content_deluxe">
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" id="check_d" value="상세보기">
					</td>
				</tr>
			</table>
			
			<!-- suite search table -->
			<table id="search_suite" class="off">
				<tr class="roomname">
					<td>SUITE</td>
				</tr>
				<tr>
					<td class="img" rowspan="7"  width="40%" style="word-break:break-all">
						<img alt="상품" src="images/SUITE.jpg">
					</td>
				</tr>
				<tr id="content_suite">
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" id="check_su" value="상세보기">
					</td>
				</tr>
			</table>
			
			<!-- prestige search table -->
			<table id="search_prestige" class="off">
				<tr class="roomname">
					<td>PRESTIGE</td>
				</tr>
				<tr>
					<td class="img" rowspan="7"  width="40%" style="word-break:break-all">
						<img alt="상품" src="images/PRESTIGE.jpg">
					</td>
				</tr>
				<tr id="content_prestige">
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" id="check_p" value="상세보기">
					</td>
				</tr>
			</table>
			
			
			<!-- 상세페이지 -->
			<ul id="content_info_st">
				<li id="cont_101">101호</li>
			 	<li id="cont_102">102호</li>
			 	<li id="cont_103">103호</li>
			</ul>
			
			<ul id="content_info_d">
			 	<li id="cont_201">201호</li>
			 	<li id="cont_202">202호</li>
			 	<li id="cont_203">203호</li>
			</ul>
			<ul id="content_info_su">
			 	<li id="cont_301">301호</li>
			 	<li id="cont_302">302호</li>
			 	<li id="cont_303">303호</li>
			</ul>
			<ul id="content_info_p">
			 	<li id="cont_401">401호</li>
			 	<li id="cont_402">402호</li>
			 	<li id="cont_403">403호</li>
			</ul>
			
		</div>
		
		<!-- 예약관리 페이지  -->
		<div class="res_manage">
			<table id="res_cont" class="off">
				<tr>
					<th id="res_room">객실</th><th id="res_period">투숙기간</th>
					<th id="res_person">인원</th><th id="res_add">추가사항</th>
					<th id="res_comp">요청사항</th><th id="res_money">결제금액</th>
				</tr>
			</table>
			<table id="res_cont1" class="off">
				
			</table>
		</div>
		
		<!-- 회원관리 페이지  -->
		<div class="member_manage">
			<table id="member_cont" class="off">
				<tr>
					<th id="mem_id">ID</th><th id="mem_name">NAME</th>
					<th id="mem_phone">PHONE</th><th id="mem_addr">ADDRESS</th>
					<th id="mem_email">E-MAIL</th><th id="mem_point">POINT</th>
				</tr>
			</table>
			<table id="member_cont1" class="off">
			</table>
			<table id="member_cont2" class="off">
			</table>
		</div>
		
	</div>
	<jsp:include page="/include/footer.jsp" />
	<script type="text/javascript" src="js/adminPage.js"></script>
</body>
</html>