<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
	
	<link rel="stylesheet" type="text/css" href="css/fullpage.css" />
	<link rel="stylesheet" href="css/MainStyle.css">
	<jsp:include page="/include/header.jsp" />
    	
    <div id="fullpage">
		<div class="section" style="background: url(images/bg_main01.jpg) no-repeat 50% 50% fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;">
    		<section class="mainpageTxt">    
       	 		<div class="mainTxt"><strong>Experience the Difference</strong></div>
    		</section>
    	<section class="mainRes">
        	<div class="reservation">
        		<div class="room-name">
            		<strong class="tit">
                        RESERVATION
                 	</strong>
                	<span class="main-div">ROOM</span>
                </div>
            <div class="check_InOut line_tag">
                <div id="modal_button" class="modal_button">
                <span class="rBox">
                    <strong class="tit">
                        CHECK IN / OUT
                    </strong>
                    <span id="dateText">YYYY/MM/DD - YYYY/MM/DD</span>
                </span>
                </div>
            </div>
            <div class="member_num line_tag">
                <a href="">
            		<span class="rBox">
                    	<strong class="tit">ADULT</strong >
                       	<span id="adultText">2</span>
                	</span>
               	 	<span class="rBox">
                    	<strong class="tit">CHILDREN</strong>
                        <span id="childText">0</span>
               		</span>
               </a>
            </div>
            <input type="button" class="ser_btn" value="SEARCH" onclick="">
        </div>
    </section>
    <!-- 팝업창란 -->
    <div id="element_to_pop_up">
      <a class="b-close">
        <i class="fas fa-times"></i>
      </a>
      <div id="datepicker"></div>
    </div>
	</div>
		<div class="section" style="background : #74b9ff">
		</div>
			
		<div class="section" style="background : #0984e3"></div>
		<div class="section fp-auto-height"><jsp:include page="/include/footer.jsp" /></div>
	</div>
	
	<script type="text/javascript" src="js/fullpage.js"></script>
	<!--  Fullpage.js -->
	<script type="text/javascript" src="js/cal.js"></script>
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
	
	(function ($) {
        $(function () {
          $("#modal_button").bind("click", function (e) {
            e.preventDefault();
            $("#element_to_pop_up").bPopup({});
          });
        });
      })(jQuery);

	</script>
</body>
</html>