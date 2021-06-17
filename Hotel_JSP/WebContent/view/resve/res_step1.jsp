<%@page import="java.util.List"%>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>

	// foreach로 반복생성되는 각각의 toggle들 개별 실행
	// STANDARD count = 1 / DELUXE = 2 ... 
	// 참조: https://okky.kr/article/422641
	function rsvToggle(count) {
		 $("[name='roomSelect']:eq(" +(count-1)+ ")").toggle('slow');
	}
	
</script>

<%
	// 세션값에서 체크인, 체크아웃 날짜를 받아옴. 
	String checkIn =  (String)session.getAttribute("resIn");
	String checkOut =  (String)session.getAttribute("resOut");
	
	System.out.println(checkIn);
	System.out.println(checkOut);
	
	// getRoomNum을 통해 예약된 방번호를 받아온다.
	ReserveDAO dao = ReserveDAO.getInstance();
	List<ReserveDTO> list = dao.getRoomNum(checkIn, checkOut);
%>
</head>
<body>
	
	<jsp:include page="../../include/header.jsp" />
	
		<div class="topArea">
			<div class="topInner">
				<br><br><br>
				<h2 class="titDep1">Booking</h2>
				<div class="stepWrap">
					<ol>
						<li>
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
					<dl class="date">
						<dt>DATE</dt>
						<dd id="dateText"><%=session.getAttribute("resIn") %>&nbsp;[요일]&nbsp;-&nbsp;
							<%=session.getAttribute("resOut") %>&nbsp;[요일]
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
				</div>
				<a href="<%=request.getContextPath() %>/step0.do" class="step0_btn">객실 다시 검색</a><br>
				----------------------------
			</div>
		</div>
		
		<div class="roomType">
			<c:set var="list" value="${roomList }" />
			
			<c:forEach items="${list }" var="i" varStatus="status" step='3'>
				
				<dl class="roomIntro">
	                 <dt class="roomName">
	                     ${i.getRoomName() }
	                 </dt>
	                 <dd class="keyword"><span>ROOM</span></dd>
	                 <dd class="roomBenefit">[roomView] view |  Size: ${i.getRoomSize() }㎡</dd>
	                 <dd class="btnView">
	                     <a href="#none" class="btnS icoArr">
	                         객실 상세보기
	                     </a>
	                 </dd>
	                 <dd class="priceWrap">
	                     <span class="price">
	                     	<input type="hidden" name="roomName" value="${i.getRoomName() }">
	                     	<input type="hidden" name="roomPrice" value="${i.getRoomPrice() }"> 
	                         ${i.getRoomPrice() }<em>KRW ~</em>
	                     </span>
	                     <span class="day"><%=session.getAttribute("resNight") %>박 / 세금 별도</span>
	                 </dd>
	                 <dd class="thum">
	                 	<img src="../../image/${i.getRoomImage() }.jpeg" alt="${i.getRoomContent() }">										
	                 </dd>
	             </dl>
	             
	             <!-- toggle btn -->
	             <button type="button" id="rsv_toggle_btn" style='border: 1px solid' 
	                 	onclick="rsvToggle(${status.count});return false;">RESERVE</button>
	             
	            <!-- toggle inner -->
	            <div class="roomNumber" name="roomSelect" style='display: none;'>
	                <h4 class="titDep3">OFFERS</h4>
	                 
	                <ul>
	                	<c:forEach varStatus="s" begin="1" end="3">
			                <li class="">
			                   <div id="${status.count }0${s.count}" style='border: 1px solid'>
			                       <div class="titArea">
			                           <strong class="tit">${status.count }0${s.count}호</strong>
			                       </div>
			                       
		                           <button type="button" class="detail_btn">
		                               상품 상세보기
		                           </button>
		                           
		                           <c:set var="num" value="${status.count }0${s.count}"></c:set>
		                           <a href="<%=request.getContextPath() %>/step2.do?num=<c:out value="${num}" />&name=${i.getRoomName() }&price=${i.getRoomPrice() }">
		                           예약하기</a>
			                   </div>
	                    	</li>
	                    </c:forEach>
                    </ul>
	            </div>
	             
	            <br>
	             ----------------------------------
	        </c:forEach>
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