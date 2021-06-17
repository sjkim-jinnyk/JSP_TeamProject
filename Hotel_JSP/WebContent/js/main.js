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
   
	    function getToday(){
	    	let date = new Date();
		    var year = date.getFullYear();
		    var month = ("0" + (1 + date.getMonth())).slice(-2);
		    var day = ("0" + date.getDate()).slice(-2);

		    return year + "/" + month + "/" + day;
		}
	    
	    function getNextday(){	    
	    	let date = new Date();
	    	let tomorrow = new Date(date.setDate(date.getDate() + 1));
		    var year = tomorrow.getFullYear();
		    var month = ("0" + (1 + tomorrow.getMonth())).slice(-2);
		    var day = ("0" + tomorrow.getDate()).slice(-2);
		    
		    return year + "/" + month + "/" + day;    	
	    }
		
	    // 기본 값을 오늘날짜 - 내일 날짜로 설정.
	    $("#dateText").text(getToday() + " - " + getNextday());
	    $("#resIn").val(getToday());
	    $("#resOut").val(getNextday()); 
	});
	
(function ($) {
     $(function () {
          $("#cal_modal_button").bind("click", function (e) {
            e.preventDefault();
            $("#element_to_pop_up").bPopup({
            	follow: [false, false], //x, y
                position: ['auto', 350], //x, y
            	easing: 'easeOutBack', //uses jQuery easing plugin
                speed: 450,
                transition: 'slideUp'	
            });
          });
        });
       
        $(function () {
            $("#member_modal_button").bind("click", function (e) {
              e.preventDefault();
              $("#member_to_pop_up").bPopup({
              	follow: [false, false], //x, y
                  position: ['auto', 350], //x, y
              	easing: 'easeOutBack', //uses jQuery easing plugin
                  speed: 450,
                  transition: 'slideUp'	
              });
            });
          });     
 })(jQuery);


// 어른, 아이 증감식
$(".numMember button").on("click", function(){
	let target = $(this).closest(".numMember").data("target");
	let adult_Max = parseInt($("input[type=hidden][name=resAdult]").val());
	let child_Max = parseInt($("input[type=hidden][name=resChild]").val());
	let up_button = $(this).hasClass("btnUp");
	
	if(adult_Max > 0 && (adult_Max + child_Max) < 4){
		if(target === "adult" && adult_Max < 3 && up_button === true){
			adult_Max++;
			$("input[type=hidden][name=resAdult]").val(adult_Max);
			$(".numMember[data-target='adult'] span em").text(adult_Max);
			$("#adultText").text(adult_Max);
		}else if(target === "child" && child_Max < 3 && up_button === true){
			child_Max++;
			$("input[type=hidden][name=resChild]").val(child_Max);
			$(".numMember[data-target='child'] span em").text(child_Max);
			$("#childText").text(child_Max);
		}
	}
	
	if(target === "adult" && adult_Max > 0 && up_button === false){
		if(adult_Max === 1){
			adult_Max = 1;
		}else{
			adult_Max--;
		}
		$("input[type=hidden][name=resAdult]").val(adult_Max);
		$(".numMember[data-target='adult'] span em").text(adult_Max);
		$("#adultText").text(adult_Max);
	}else if(target === "child" && child_Max > 0 && up_button === false){
		child_Max--;
		$("input[type=hidden][name=resChild]").val(child_Max);
		$(".numMember[data-target='child'] span em").text(child_Max);
		$("#childText").text(child_Max);
	}
	
})







