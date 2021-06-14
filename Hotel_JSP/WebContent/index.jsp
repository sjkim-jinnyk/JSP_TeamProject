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
				<input type="hidden" name="resNight" id="resNight" value="0">			
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
		<div class="section section_menu">
			<div class="slide">
				<div class="fp_bg_1"></div>
				<div class="slide_box">
					<div class="cont">
						<strong class="tit">Meet Our Hotel</strong>
						<span class="sTit">HERITAGE LEADS TO ONE FOR ALL</span>
						<p class="txt01">
							어디서나 한결같이 품격있는 서비와 시설로
							<br>
							고객에게 깊은 감동을 주는 호텔
						</p>
						<p class="txt02">
							균형있는 라이프스타일을 추구하며 품격의 가치를 아는 고객을 위해
							<br>
							세련되고 모던한 감각을 지닌 안락한 객실과 세심한 배려가 묻어나는 서비스를 준비합니다.
							<br>
							호텔앤리조트에서 품격 있는 휴식을 즐기실 수 있습니다.
						</p>
						<a href="#" class="btnSC btnM">VIEW MORE</a>
					</div>
				</div>
			</div>
			<div class="slide"> 
				<div class="slide_box">
					test 2
				</div>
			</div>
			<div class="slide">
				<div class="slide_box">
					test 3
				</div>
			</div>
		</div>	
		<div class="section" style="background : white">
			<div class="inner">
				<div class="offer">
					GO TO OFFERS >
				</div>
				<div class="slide">
				
					<div class="swipeBox">
					<ul class="swipeCont">
						<li class="swipeSlide">
							<span class="locationTag_test">공지사항</span>
							<span class="thum">
								<img src="images/STANDARD.jpg">
								<a href="#" class="btnSC btnL">
									자세히 보기
								</a>
							</span>
							<strong class="tit">Testing SWIPECONT is GooD</strong>
							<span class="txt">슬라이드 공지사항 작동 테스트 글 입니다. 잘 작동하는지 확인 바랍니다.</span>
							<span class="date">2021.06.14</span>
						</li>						
					</ul>
					<ul class="swipeCont">
						<li class="swipeSlide">
						<span class="locationTag_test2">공지사항</span>
							<span class="thum">
								<img src="images/STANDARD.jpg">
								<a href="#" class="btnSC btnL">
									자세히 보기
								</a>
							</span>
							<strong class="tit">Testing SWIPECONT is GooD</strong>
							<span class="txt">슬라이드 공지사항 작동 테스트 글 입니다. 잘 작동하는지 확인 바랍니다.</span>
							<span class="date">2021.06.14</span>
						</li>						
					</ul>
					<ul class="swipeCont">
						<li class="swipeSlide">
							<span class="thum">
								<img src="images/STANDARD.jpg">
								<a href="#" class="btnSC btnL">
									자세히 보기
								</a>
							</span>
							<strong class="tit">Testing SWIPECONT is GooD</strong>
							<span class="txt">슬라이드 공지사항 작동 테스트 글 입니다. 잘 작동하는지 확인 바랍니다.</span>
							<span class="date">2021.06.14</span>
							<span class="locationTag">공지사항</span>
						</li>						
					</ul>
					</div>
		
				</div>
				
				<div class="slide">
					
					<div class="swipeBox">
					<ul class="swipeCont">
						<li class="swipeSlide">
							<span class="thum">
								<img src="images/STANDARD.jpg">
								<a href="#" class="btnSC btnL">
									자세히 보기
								</a>
							</span>
							<strong class="tit">Testing SWIPECONT is GooD</strong>
							<span class="txt">슬라이드 공지사항 작동 테스트 글 입니다. 잘 작동하는지 확인 바랍니다.</span>
							<span class="date">2021.06.14</span>
							<span class="locationTag">공지사항</span>
						</li>						
					</ul>
					<ul class="swipeCont">
						<li class="swipeSlide">
							<span class="thum">
								<img src="images/STANDARD.jpg">
								<a href="#" class="btnSC btnL">
									자세히 보기
								</a>
							</span>
							<strong class="tit">Testing SWIPECONT is GooD</strong>
							<span class="txt">슬라이드 공지사항 작동 테스트 글 입니다. 잘 작동하는지 확인 바랍니다.</span>
							<span class="date">2021.06.14</span>
							<span class="locationTag">공지사항</span>
						</li>						
					</ul>
					<ul class="swipeCont">
						<li class="swipeSlide">
							<span class="thum">
								<img src="images/STANDARD.jpg">
								<a href="#" class="btnSC btnL">
									자세히 보기
								</a>
							</span>
							<strong class="tit">Testing SWIPECONT is GooD</strong>
							<span class="txt">슬라이드 공지사항 작동 테스트 글 입니다. 잘 작동하는지 확인 바랍니다.</span>
							<span class="date">2021.06.14</span>
							<span class="locationTag">공지사항</span>
						</li>						
					</ul>
					</div>
		
				</div>
			</div>

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