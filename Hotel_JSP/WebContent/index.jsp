<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
	
	<link rel="stylesheet" type="text/css" href="css/fullpage.css" />
	<link rel="stylesheet" href="css/MainStyle.css">
	<jsp:include page="include/header.jsp" />
    	
    <div id="fullpage">
		<div class="section" style="background: url(images/bg_main01.jpg) no-repeat 50% 50% fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;">
    		<section class="mainpageTxt">    
       	 		<div class="mainTxt"><strong>Experience the Difference</strong></div>
    		</section>
    	<section class="mainRes">
    		<form id="step0Form" name="step0Form" method="post" 
			action="<%=request.getContextPath()%>/step1.do">
				<input type="hidden" name="resIn" id="resIn" value="0">				
				<input type="hidden" name="resOut" id="resOut" value="0">			
				<input type="hidden" name="resAdult" id="resAdult" value="2">								
				<input type="hidden" name="resChild" id="resChild" value="0">
        	<div class="reservation">
        		<div class="room-name">
            		<strong class="tit">
                        RESERVATION
                 	</strong>
                	<span class="main-div">ROOM</span>
                </div>
            <div class="check_InOut line_tag">
                <div id="cal_modal_button" class="cal_modal_button">
                <span class="rBox">
                    <strong class="tit">
                        CHECK IN / OUT
                    </strong>
                    <span id="dateText">CHECK IN/OUT SELECT</span>
                </span>
                </div>
            </div>
            <div class="member_num line_tag">
                <div id="member_modal_button" class="member_modal_button">
            		<span class="rBox">
                    	<strong class="tit">ADULT</strong >
                       	<span id="adultText">2</span>
                	</span>
               	 	<span class="rBox">
                    	<strong class="tit">CHILDREN</strong>
                        <span id="childText">0</span>
               		</span>
               </div>
            </div>
            <input type="submit" class="ser_btn" value="SEARCH" onclick="">
        </div>
        </form>
    </section>
    <!-- 팝업창란 -->
    <div id="element_to_pop_up">
      <a class="b-close">
        <i class="fas fa-times"></i>
      </a>
      <div id="datepicker"></div>
    </div>
    
    <div id="member_to_pop_up">
      <a class="b-close">
        <i class="fas fa-times"></i>
      </a>
      <div class="member_modal">
      	<div class="numMember" data-target="adult">
      		<button type="button" class="btnDown">
      			<i class="fas fa-minus"></i>
      		</button>
      		<span>성인 <em>2</em></span>
      		<button type="button" class="btnUp">
      			<i class="fas fa-plus"></i>
      		</button>
      	</div>
      	<div class="numMember" data-target="child">
      		<button type="button" class="btnDown">
      			<i class="fas fa-minus"></i>
      		</button>
      		<span>어린이 <em>0</em></span>
      		<button type="button" class="btnUp">
      			<i class="fas fa-plus"></i>
      		</button>
      	</div>
      	<!--  
      	<div class="numMember_button">
      		<button type="button">확인</button>
      	</div>
      	-->
      </div>
    </div>
    
	</div>
		<div class="section" style="background : #74b9ff">
		</div>	
		<div class="section" style="background : #0984e3">
		</div>
		<div class="section fp-auto-height">
			<jsp:include page="/include/footer.jsp" />
		</div>
	</div>
	
	<!--  Fullpage.js -->
	<script type="text/javascript" src="js/fullpage.js"></script>
	<script type="text/javascript" src="js/cal.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>