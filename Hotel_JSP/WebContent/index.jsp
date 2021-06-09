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
    	<section class="mainRes">
        	<ul class="reservation">
            	<li class="hotel">
                OO호텔
            	</li>
            <li class="check_InOut">
                <a href="">
                    <ul class="tit">
                        <li>CHECK IN / OUT</li>
                    </ul>
                </a>
                <a href="">
                    <ul class="num">
                        <li>YYYY/MM/DD</li>
                    </ul>
                </a>
            </li>
            <li class="roomselect">
                <a href="">
                    <ul class="tit">
                        <li>ROOM</li>
                        <li>ADULT</li>
                        <li>CHILDREN</li>
                    </ul>
                </a>
                <a href="">
                    <ul class="num">
                        <li>1</li>
                        <li>2</li>
                        <li>3</li>
                    </ul>
                </a>
            </li>
            <input type="button" class="ser_btn" value="SEARCH" onclick="">
        </ul>
    </section>
	</div>
		<div class="section" style="background : #74b9ff">
		</div>
			
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