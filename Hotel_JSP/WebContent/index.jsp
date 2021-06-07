<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
	
	<link rel="stylesheet" type="text/css" href="css/fullpage.css" />
	
	<jsp:include page="/include/header.jsp" />
    
    <div id="fullpage">
		<div class="section" style="background: url(image/bg_main01.jpg) no-repeat 50% 50% fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;">
    		<section class="mainpageTxt">    
       	 		<div class="mainTxt"><strong>Experience the Difference</strong></div>
    		
    		</section>
    		
    		<div class="mainRes">
        		<div class="roomRes">
        	  		<strong class="tit">RESERVATION</strong>
        	  			<div class="selectWrap" style="width:205px;">
        	  				<span class="text-ui">ROOM</span>
        	  			</div>
        		</div>       	
          	</div>
          	
          	<div class="selectRoom">
					<strong class="tit">ROOM</strong>
					<div class="selectWrap" style="width:205px;">
						<select data-height="150px" data-direction="up" name="selectVal">
						  <option selected="selected" value="DK">DELUXE KING</option>
						  <option value="DT">DELUXE TWIN</option>		  
						  <option value="PS">PREMIER SUITE</option>
						  <option value="HS">HILL SUITE</option>
						  <option value="RS">ROYAL SUITE</option>
						  
						</select>
					</div>
				</div>
          	
    		<form id="mainResveForm" name="mainResveForm" method="post" >
				<input type="hidden" name="roomCode" id="sysCode" value=""/>	
				<input type="hidden" name="ckinDate" id="ckinDate" value="" /> 				
				<input type="hidden" name="ckoutDate" id="ckoutDate" value="" /> 							
				<input type="hidden" name="roomCnt" id="roomCnt" value="1" />				
				<input type="hidden" id="maxAdlt" value="3" />				
				<input type="hidden" id="maxChld" value="2" />			
       		
       		
       		<div class="chkInout">
				<a href="#none">
				<strong class="tit">CHECK IN / OUT</strong>
					<span class="date" id="dateTextHub"></span>
				</a> <!-- 클릭 시 하단 mainCalendar 펼쳐짐 -->
				<div class="mainCalendar clearCont">
					<div class="calContainer calendarS"></div>
					<button type="button" class="btnClose">닫기</button>
				</div>
			</div>	
			
			<div class="roomWrap">
				<a href="#none">
       			<span class="rBox">
					<strong class="tit">ADULT</strong>
					<span id="adultCntText">2</span>
				</span>
				<span class="rBox">
					<strong class="tit">CHILDREN</strong>
					<span id="childCntText">0</span>
				</span>
       			</a>
       		</div>
       		
       		<input type="button" class="ser_btn" onclick="fncSearchList('R');" value="SEARCH"/>
			</form>
		</div>
		
		<div class="section" style="background : #74b9ff"></div>
		<div class="section" style="background : #0984e3"></div>
		<div class="section fp-auto-height"><jsp:include page="/include/footer.jsp" /></div>
	</div>
	
	<script type="text/javascript" src="js/fullpage.js"></script>
	<!--  Fullpage.js -->
	<script type="text/javascript">
	
	$(document).ready(function() {
	    $('#fullpage').fullpage({
	        //options here
	        licenseKey: 'OPEN-SOURCE-GPLV3-LICENSE',
	        autoScrolling:true,
	        scrollHorizontally: true,
	        navigation: true,
	        navigationPosition: 'left',
	        navigationTooltips: ['예약', '정보', '공지사항'],
	        showActiveTooltip: true,
	    });
	});
	
	</script>
	
	
</body>
</html>