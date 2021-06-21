<%@page import="java.text.DecimalFormat"%>
<%@page import="com.hotel.model.ReserveDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.hotel.model.ReserveDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.hotel.model.ReserveDAO"%>
<%@page import="com.hotel.model.ReserveDTO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 예약 - 객실, 요금 선택 | 조선호텔앤리조트</title>

<link rel="stylesheet" href="css/StepStyle.css">
<link href="" rel="stylesheet">

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	
	$(document).ready( function(){
		
		let userId = '<%=(String)session.getAttribute("userId")%>';
		
		if(userId == 'null'){ // 로그인 안한 경우
			alert('로그인 후 이용 가능합니다.');
			location.replace("<%=request.getContextPath() %>/login.do");
		}
	
	});
	
	// foreach로 반복생성되는 각각의 toggle들 개별 실행
	// STANDARD count = 1 / DELUXE = 2 ... 
	// 참조: https://okky.kr/article/422641
	function rsvToggle(count) {
		 $("[name='roomSelect']:eq(" +(count-1)+ ")").toggle('slow');
	}
	
</script>
<%
	// 세션값에서 체크인, 체크아웃 날짜 받아오기
	String checkIn = (String)session.getAttribute("resIn");
	String checkOut = (String)session.getAttribute("resOut");
	
	System.out.println(checkIn);
	System.out.println(checkOut);
	
	// ReserveDAO의 getSoldRoom()을 통해 예약된 방 번호을 받아온다.
	ReserveDAO dao = ReserveDAO.getInstance();
	List<ReserveDTO> list = dao.getRoomNum(checkIn, checkOut);
	
	
	
%>
	<jsp:include page="../../include/header.jsp" />
	
		<div class="res_cont">
	
			<div class="topArea">
				<div class="topInner">
					
					<h2 class="titDep1">Booking</h2>
					<div class="stepWrap">
						<ol>
						<li class="on1">객실,요금 선택</li>
						<li class="next2"></li>
						<li class="next"></li>
						
					</ol>
					</div>
				</div>
			</div>
		
			<!-- //topArea -->
<!-- 		<div class="selResult"> -->
			<div class="selResult">	
			
				<div class="inner">
					<div class="infoArea">
						<dl class="date">
							<dt>DATE</dt>
							<dd id="dateText"><%=session.getAttribute("resIn") %>&nbsp;<%=session.getAttribute("resInYoil") %>&nbsp;/&nbsp;
								<%=session.getAttribute("resOut") %>&nbsp;<%=session.getAttribute("resOutYoil") %>&nbsp;|&nbsp;
								<%=session.getAttribute("resNight") %>&nbsp;박</dd>
						</dl>
						<dl class="adults">
							<dt>ADULTS</dt>
							<dd><%=session.getAttribute("resAdult") %></dd>
						</dl>
						<dl class="children">
							<dt>CHILDREN</dt>
							<dd><%=session.getAttribute("resChild") %></dd>
						</dl>
						<a href="<%=request.getContextPath() %>/step0.do" class="step0_btn">객실 다시 검색</a>
					</div>
				</div> <!-- inner -->
			</div>
			
			<div>
				<div class="roomType">
					<c:set var="list" value="${roomList }" />
					
					<c:forEach items="${list }" var="i" varStatus="status" step='3'>
						<div class="room_wrap">
							<div class="room_intro">
								<dl class="room_thum">
									<dd class="thum">
					                 	<img src="image/${i.getRoomImage() }.jpeg" alt="${i.getRoomContent() }">										
					                </dd>
					            </dl>
					            <dl class="room_info">
									 <dd class="keyword"><span>ROOM</span></dd>
					                 <dt class="roomName">
					                     ${i.getRoomName() }
					                 </dt>
					                 <dd class="roomBenefit">Size: ${i.getRoomSize() }㎡</dd>
					                 <dd class="price">
					                   	<input type="hidden" name="roomName" class="roomName" value="${i.getRoomName() }">
				                     	<input type="hidden" name="roomPrice" class="roomPrice" value="${i.getRoomPrice() }">
				                     	<fmt:formatNumber value="${i.getRoomPrice() }" pattern="#,###" var="rmPrice"/>
				                         ${rmPrice }<em class="krw">KRW ~</em>
					                 </dd>
					                 <dd>
					                 	<span class="day"><%=session.getAttribute("resNight") %>박 / 세금 별도</span>
					                 </dd>
					                 
					                 <dd class="btnWrap">
					                 	 <!-- toggle btn -->
					            		 <button type="button" id="rsv_toggle_btn" 
					                 	onclick="rsvToggle(${status.count});return false;"><span class="btn_font">RESERVE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;∨</span></button>
					                 </dd>
					            </dl>
				            </div>
				             
				            <!-- toggle inner -->
				            <div class="roomNumber" name="roomSelect" style='display: none;'>
				                <h4>OFFERS</h4>
				                 
				                <ul>
				                	<c:forEach varStatus="s" begin="1" end="3">
						                <li class="">
						                   <div id="${status.count }0${s.count}" class="detail_list">
						                       <strong>ROOM  /  ${status.count }0${s.count}</strong>
						                       <c:set var="num" value="${status.count }0${s.count}"></c:set>
						                           <a href="<%=request.getContextPath() %>/step2.do?num=<c:out value="${num}" />&name=${i.getRoomName() }&price=${i.getRoomPrice() }">
						                           	 	예약하기</a>
						                   </div>
				                    	</li>
				                    </c:forEach>
			                    </ul>
				            </div>
				                      
			             </div><!-- room_wrap -->
			        </c:forEach>
				</div>
			</div>
			</div> 
		</div>
		<script>
		
			// list로 가져오기 위한 변수 설정
			var roomNumber = [];
			var loop = 0;
			
			// java에서 가져온 변수를 JS List값으로 사용하기위해 JSON으로 파싱.
			<%
			for(int i=0; i < list.size(); i++){
		  	%>
		  	roomNumber[loop] = {
		    	number:"<%=list.get(i).getRoomNumber() %>"
		  	};
		  	loop++;
		  	<%
			}
			%>
			
			// 룸번호 값으로 받아서 해당 ID값 을 삭제.
			for(i=0; i< roomNumber.length; i++){
		  		console.log("list: "+roomNumber[i].number);
		  		console.log($("#"+roomNumber[i].number));
		  		
		  		$("#"+roomNumber[i].number).empty();
			}
			
			
			
			
		</script>
	<jsp:include page="../../include/footer.jsp" />
</body>
</html>