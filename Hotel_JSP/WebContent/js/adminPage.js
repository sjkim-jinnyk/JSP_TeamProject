const room_click = document.querySelector('#room_click');   // 객실관리 클릭
const res_click = document.querySelector('#res_click');		// 예약관리 클릭
const standard = document.querySelector('#standard');		// 스탠다드 table
const deluxe = document.querySelector('#deluxe');			// 디럭스 table
const suite = document.querySelector('#suite');				// 스위트 table
const prestige = document.querySelector('#prestige');		// 프레스티지 table
const contArea2 = document.querySelector('#contArea2');		// 예약관리  table
const use = document.querySelector('.use');
const search = document.querySelector('#search');	// 객실버튼 
const img = document.querySelector('#img');	// 객실버튼 
const search_page = document.querySelector('#search_page');	// 객실버튼 



/* 현재 날짜를 불러오는 함수 */
function getToday() {
	let date = new Date();
	return date.getFullYear() + "-" + ("0"+(date.getMonth()+1)).slice(-2) + "-" + ("0"+date.getDate()).slice(-2);
}

function standard_get() {
	/*let today = getToday();  // 오늘 날짜를 YYYY-MM-DD로 저장
	console.log(today);*/
	let today = '2021-06-14';
	let standard = $("#standard_name").text();
	let first = $("#101").text();
	let second = $("#102").text();
	let third = $("#103").text();
	// standard ajax
	$.ajax({
		type : "post",
		url : "./view/admin/standard_main.jsp",
		async: false,
		data : {
			"today" : today,
			"room_name" : standard
		},
		success : function(data) {
			//alert('성공');
			let table1 = "";
			let table2 = "";
			let table3 = "";
			$(data).find("roomnum").each(function(){
				let number = $(this).find("number").text();
				if(first == number){
					table1 += "O<br>";
				}else if(second == number){
					table2 += "O<br>"
				}else if(third == number) {
					table3 += "O<br>";
				}
			});
			$("#101_check").append(table1);
			$("#102_check").append(table2);
			$("#103_check").append(table3);
			

		},
		error : function() {
			alert('오류');
		}
	});
};
standard_get();
function deluxe_get() {
	let today = '2021-06-14';
	let deluxe = $("#deluxe_name").text();
	let first = $("#201").text();
	let second = $("#202").text();
	let third = $("#203").text();
	
	// deluxe ajax
	$.ajax({
		type : "post",
		url : "./view/admin/deluxe_main.jsp",
		async: false,
		data : {
			"today" : today,
			"room_name" : deluxe
		},
		success : function(data) {
			//alert('성공');
			let table1 = "";
			let table2 = "";
			let table3 = "";
			$(data).find("roomnum").each(function(){
				let number = $(this).find("number").text();
				if(first == number){
					table1 += "O<br>";
				}else if(second == number){
					table2 += "O<br>"
				}else if(third == number) {
					table3 += "O<br>";
				}
			});
			$("#201_check").append(table1);
			$("#202_check").append(table2);
			$("#203_check").append(table3);

		},
		error : function() {
			alert('오류');
		}
	});
};
deluxe_get();
function suite_get() {
	let today = '2021-06-14';
	let suite = $("#suite_name").text();
	let first = $("#301").text();
	let second = $("#302").text();
	let third = $("#303").text();
	// suite ajax
	$.ajax({
		type : "post",
		url : "./view/admin/suite_main.jsp",
		async: false,
		data : {
			"today" : today,
			"room_name" : suite
		},
		success : function(data) {
			//alert('성공');
			let table1 = "";
			let table2 = "";
			let table3 = "";
			$(data).find("roomnum").each(function(){
				let number = $(this).find("number").text();
				if(first == number){
					table1 += "O<br>";
				}else if(second == number){
					table2 += "O<br>"
				}else if(third == number) {
					table3 += "O<br>";
				}
			});
			$("#301_check").append(table1);
			$("#302_check").append(table2);
			$("#303_check").append(table3);

		},
		error : function() {
			alert('오류');
		}
	});
};
suite_get();
function prestige_get() {
	let today = '2021-06-14';
	let prestige = $("#prestige_name").text();
	let first = $("#401").text();
	let second = $("#402").text();
	let third = $("#403").text();
	// prestige ajax
	$.ajax({
		type : "post",
		url : "./view/admin/prestige_main.jsp",
		async: false,
		data : {
			"today" : today,
			"room_name" : prestige
		},
		success : function(data) {
			//alert('성공');
			let table1 = "";
			let table2 = "";
			let table3 = "";
			$(data).find("roomnum").each(function(){
				let number = $(this).find("number").text();
				if(first == number){
					table1 += "O<br>";
				}else if(second == number){
					table2 += "O<br>"
				}else if(third == number) {
					table3 += "O<br>";
				}
			});
			$("#401_check").append(table1);
			$("#402_check").append(table2);
			$("#403_check").append(table3);

		},
		error : function() {
			alert('오류');
		}
	});
};
prestige_get();

/* check 클릭시 상세내역 오픈*/
const btn = document.querySelector('#check');
const list = document.querySelector('.content_info');

btn.addEventListener('click', function() {
	let d_twin = $("#D_TWIN").text();
	console.log(d_twin);
	
	// 상세내역 오픈될 때만 룸번호 보여주는 ajax 실행
	if (list.style.display === 'none') {
		list.style.display = 'block';
		
		$.ajax({
			type : "post",
			url : "./view/admin/adminPageCheck.jsp",
			data : {
				"D_TWIN" : d_twin
			},
			success : function(data) {
				//alert('성공');
				let table = "";
				console.log($(data).find("number"));
				$(data).find("number").each(function(){
					
					table += "<tr>";
					table += "<td>"+$(this).find("name").text()+"</td>"
					table += "<td>"+$(this).find("num").text()+"</td>"
					table += "</tr>";	
				});
				
				$(".content_info").append(table);

			},
			error : function() {
				alert('오류');
			}
		});
	} else {
		list.style.display = 'none';
	}
	
});

/* 객실검색 버튼 눌렀을 때*/

$(function() {
	$("#search_btn").click(function() {
		let room = $("#roomName").val();
		let checkIn = $("#checkIn").val();
		let checkOut = $("#checkOut").val();
		console.log(room);
		console.log(checkIn);
		console.log(checkOut);
		
		if (contArea2.classList == 'on') {
			contArea2.classList.replace('on', 'off');
		}
		if (room == 'STANDARD') {
			img.classList.replace('off','on');
		}
		search.classList.replace('off','on');
		standard.classList.replace('use', 'off');
		deluxe.classList.replace('use', 'off');
		suite.classList.replace('use', 'off');
		prestige.classList.replace('use', 'off');
		standard.classList.replace('on', 'off');
		deluxe.classList.replace('on', 'off');
		suite.classList.replace('on', 'off');
		prestige.classList.replace('on', 'off');
		
		$("#search").empty();
		
		
		
		$.ajax({
			type : "post",
			url : "./view/admin/search_room.jsp",
			data : {
				"roomName" : room,
				"checkIn" : checkIn,
				"checkOut" : checkOut
			},
			async: false,
			datatype : "xml",
			success : function(data) {
				alert('page1 성공');
				console.log(data);
				let table1 = "";
				let table2 = "";
				let table3 = "";
				console.log($(data).find("reserve"));
				$(data).find("reserve").each(function(){
					
					table1 += "<li>" + $(this).find("num").text() + "</li>"
					table1 += "<li>" + $(this).find("resin").text() +"&nbsp;~&nbsp;"+ $(this).find("resout").text() +"</li>"
					table2 += "<img alt='상품' src='image/" + $(this).find("name").text() + ".jpg'>";
					table3 += $(this).find("name").text();
				});

				$("#x").append(table1);
				$("#img").append(table2);
				$("#name").append(table3);
			},
			error : function() {
				alert("오류");
			}

		});
	});
	
	

});



/* 객실관리, 예약관리 클릭시 페이시 숨김 or 보임*/

/* 객실관리 클릭 */
room_click.addEventListener('click', function() {
	standard.classList.replace('off', 'on');		
	deluxe.classList.replace('off', 'on');			
	suite.classList.replace('off', 'on');			
	prestige.classList.replace('off', 'on');		
	contArea2.classList.replace('use','off');
	
	search.classList.replace('use','off');
	if (contArea2.classList == 'on') {
		contArea2.classList.replace('on', 'off');
	}
	
});

/* 예약관리 클릭 */
res_click.addEventListener('click', function() {
	search.classList.replace('use','off');
	contArea2.classList.replace('off', 'on');
	if (standard.classList != 'off') {
		standard.classList.replace('on', 'off');
		standard.classList.replace('use', 'off');
	}
	if (deluxe.classList != 'off') {
		deluxe.classList.replace('on', 'off');
		deluxe.classList.replace('use','off');
	}
	if (suite.classList != 'off') {
		suite.classList.replace('on', 'off');
		suite.classList.replace('use', 'off');
	}
	if (prestige.classList != 'off') {
		prestige.classList.replace('on', 'off');
		prestige.classList.replace('use', 'off');
	}

	
	console.log(contArea2);
});
