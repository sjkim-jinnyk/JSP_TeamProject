<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
	
	<link rel="stylesheet" type="text/css" href="css/fullpage.css" />
	<link rel="stylesheet" href="css/MainStyle.css">
	<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
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
        	<div class="reservation" data-aos="fade-up">
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
							<span class="thum">
								<img src="images/main_room1.jpg">
								<a href="#" class="btnSC btnL">
									자세히 보기
								</a>
							</span>
							<strong class="tit">DELUXE KING</strong>
							<span class="txt">
								쾌적한 환경에서 편안한 휴식을 제공하는 비즈니스 디럭스 룸은 항 알러지 처리 카페트, 
								프리미엄 커피 머신 등으로 집과 같이 편안하게 머무르실 수 있습니다.
							</span>
							<span class="date">2021.06.14</span>
							<span class="locationTag">공지사항</span>
						</li>						
					</ul>
					<ul class="swipeCont">
						<li class="swipeSlide">
							<span class="thum">
								<img src="images/main_room2.jpg">
								<a href="#" class="btnSC btnL">
									자세히 보기
								</a>
							</span>
							<strong class="tit">PREMIER SUITE KING</strong>
							<span class="txt">
								거실 겸용의 객실과 드레스 룸처럼 사용할 수 있는 넉넉한 수납 공간을 갖춘 옷장, 샤워 부스를 따로 갖춘 욕실, 
								그리고 천상의 휴식을 드리는 헤븐리 베드는 편안한 여정을 제공합니다.
							</span>
							<span class="date">2021.06.14</span>
							<span class="locationTag">공지사항</span>
						</li>						
					</ul>
					<ul class="swipeCont">
						<li class="swipeSlide">
							<span class="thum">
								<img src="images/main_room3.jpg">
								<a href="#" class="btnSC btnL">
									자세히 보기
								</a>
							</span>
							<strong class="tit">PRESTIGE HILL SUITE</strong>
							<span class="txt">
								국빈, 고위 관리들이 투숙하는 영빈관 역할을 도맡아 해온 프레지덴셜 스위트는 입구를 중심으로 오른쪽 "사적(私的) 공간"과 
								왼쪽 "공적(公的) 공간"으로 나뉩니다. 사적 공간에는 메인 침실과 욕실이 있으며, 수행원을 위한 소규모 집무실을 겸한 침실과 욕실이 있습니다. 
								왼쪽의 공적 공간은 집무실, 거실 그리고 회의실로도 쓸 수 있는 식당과 주방이 있습니다. 공적 공간의 세 파트는 각각 파티션으로 분리되어 별도의 
								공간으로 활용이 가능하며 천장의 높이가 일반 객실의 2배로 파티나 연회 시에도 적절한 분위기를 낼 수 있습니다.
							</span>
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
								<img src="images/main_fitness.jpg">
								<a href="#" class="btnSC btnL">
									자세히 보기
								</a>
							</span>
							<strong class="tit">WestinWORKOUT®<br>Fitness Club</strong>
							<span class="txt">
								세계적인 디자이너 아담 티아니가 역동적이고 미래지향적으로 디자인해 활기찬 분위기를 느끼실 수 있습니다.
								인체 공학적 설계와 가능성으로 인정 받는 운동 기구 99종이 준비되어 있으며 운동 목적에 맞추어 
								Stretch zone, Weight zone, Aerobic zone등으로 구성되어 있습니다.
							</span>
							<span class="date">2021.06.14</span>
							<span class="locationTag">learn more</span>
						</li>						
					</ul>
					<ul class="swipeCont">
						<li class="swipeSlide">
							<span class="thum">
								<img src="images/main_swimmingPool.jpg">
								<a href="#" class="btnSC btnL">
									자세히 보기
								</a>
							</span>
							<strong class="tit">WestinWORKOUT®<br>Swimming Pool</strong>
							<span class="txt">
								요트에서 영감을 받아 디자인 된 하늘이 보이는 천장과 바다 속에 있는 듯한 기분을 느끼게 해주는 
								수영장은 국제규격(25M)에 맞는 수영장으로, 24시간 여과 시스템에 의해 국내 최고의 수질을 유지합니다.
							</span>
							<span class="date">2021.06.14</span>
							<span class="locationTag">learn more</span>
						</li>						
					</ul>
					<ul class="swipeCont">
						<li class="swipeSlide">
							<span class="thum">
								<img src="images/main_sauna.jpg">
								<a href="#" class="btnSC btnL">
									자세히 보기
								</a>
							</span>
							<strong class="tit">WestinWORKOUT®<br>Sauna</strong>
							<span class="txt">
								품격이 남다른 분들의 취향을 고려하여 편안함과 안정성을 살린 왕실풍의 인테리어와 휴식과 피로회복을 위한 공간입니다. 
								각종 건강욕이 가능한 냉/온 자쿠지, 샤워 마사지 부스와 혈액 순환과 스트레스의 탁월한 효과가 있는 원적외선 건식 사우나, 
								맥반석 습식 사우나가 있으며 수면실, 이용실, 개인 사물함, 모발과 화장용품이 구비된 파우더룸이 있어 편리함을 더하고 있습니다.
							</span>
							<span class="date">2021.06.14</span>
							<span class="locationTag">learn more</span>
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
	<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  	<script>
    	AOS.init();
  	</script>
</body>
</html>