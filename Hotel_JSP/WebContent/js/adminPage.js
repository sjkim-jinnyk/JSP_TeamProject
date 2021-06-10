const room_click = document.querySelector('#room_click');
const res_click = document.querySelector('#res_click');
const standard = document.querySelector('#standard');
const deluxe = document.querySelector('#deluxe');
const suite = document.querySelector('#suite');
const prestige = document.querySelector('#prestige');
const contArea2 = document.querySelector('#contArea2');
const use = document.querySelector('.use');
const search = document.querySelector('#standard_search');

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

	
	// standard ajax
	$.ajax({
		type : "post",
		url : "./view/admin/standard_main.jsp",
		data : {
			"today" : today,
			"room_name" : standard
		},
		success : function(data) {
			//alert('성공');
			let table = "";
			$(data).find("roomnum").each(function(){
				let number = $(this).find("number").text();
				table += number +"<br>";
				
			});
			let table2="";
			$(data).find("roomnum").each(function(){
				let number = $(this).find("number").text();
				
				if(number != null){
					table2 += "O <br>";
				}
			});
			$("#standard_td").append(table);
			$("#standard_O").append(table2);
			

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

	// deluxe ajax
	$.ajax({
		type : "post",
		url : "./view/admin/deluxe_main.jsp",
		data : {
			"today" : today,
			"room_name" : deluxe
		},
		success : function(data) {
			//alert('성공');
			let table = "";
			$(data).find("roomnum").each(function(){
				let number = $(this).find("number").text();
				table += number +"<br>";
				
			});
			let table2="";
			$(data).find("roomnum").each(function(){
				let number = $(this).find("number").text();
				
				if(number != null){
					table2 += "O <br>";
				}
			});
			$("#deluxe_td").append(table);
			$("#deluxe_O").append(table2);
			

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

	// suite ajax
	$.ajax({
		type : "post",
		url : "./view/admin/suite_main.jsp",
		data : {
			"today" : today,
			"room_name" : suite
		},
		success : function(data) {
			//alert('성공');
			let table = "";
			$(data).find("roomnum").each(function(){
				let number = $(this).find("number").text();
				table += number +"<br>";
				
			});
			let table2="";
			$(data).find("roomnum").each(function(){
				let number = $(this).find("number").text();
				
				if(number != null){
					table2 += "O <br>";
				}
			});
			$("#suite_td").append(table);
			$("#suite_O").append(table2);
			

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
	// prestige ajax
	$.ajax({
		type : "post",
		url : "./view/admin/prestige_main.jsp",
		data : {
			"today" : today,
			"room_name" : prestige
		},
		success : function(data) {
			//alert('성공');
			let table = "";
			$(data).find("roomnum").each(function(){
				let number = $(this).find("number").text();
				table += number +"<br>";
				
			});
			let table2="";
			$(data).find("roomnum").each(function(){
				let number = $(this).find("number").text();
				
				if(number != null){
					table2 += "O <br>";
				}
			});
			$("#prestige_td").append(table);
			$("#prestige_O").append(table2);
			

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
		search.classList.replace('off','use');
		standard.classList.replace('use', 'off');
		deluxe.classList.replace('use', 'off');
		suite.classList.replace('use', 'off');
		prestige.classList.replace('use', 'off');
		
		let room = $("#roomName").val();
		let checkIn = $("#checkIn").val();
		let checkOut = $("#checkOut").val();
		console.log(room);
		console.log(checkIn);
		console.log(checkOut);

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
				let table = "";
				console.log($(data).find("reserve"));
				$(data).find("reserve").each(function(){
					
					table += "<li>" + $(this).find("num").text() + "</li>"
					table += "<li>" + $(this).find("resin").text() +"&nbsp;~&nbsp;"+ $(this).find("resout").text() +"</li>"
					
				});
				
				$("#standard_search").append(table);
				
			},
			error : function() {
				alert("오류");
			}

		});
	/*$.ajax({
			type : "post",
			url : "./view/admin/adminPage2.jsp",
			data : {
				"roomName" : room,
				"checkIn" : checkIn,
				"checkOut" : checkOut
			},
			async: false,
			datatype : "xml",
			success : function(data) {
				alert('page2 성공');
				console.log(data);
				let table = "";
				console.log($(data).find("reserve"));
				$(data).find("reserve").each(function(){
					
					table += "<tr>";
					table += "<td>"+$(this).find("name").text()+"</td>"
					table += "<td>"+$(this).find("resin").text()+"</td>"
					table += "<td>"+$(this).find("resout").text()+"</td>"
					table += "</tr>";
					
				});
				
				$("#D_KING_search").append(table);
				
				$("#twin").after(table);

			},
			error : function() {
				alert("오류");
			}

		}); */
	});
	
	

});



/* 객실관리, 예약관리 클릭시 페이시 숨김 or 보임*/

/* 객실관리 클릭 */
room_click.addEventListener('click', function() {
	standard.classList.replace('off', 'on');
	deluxe.classList.replace('off','on');
	suite.classList.replace('off','on');
	prestige.classList.replace('off','on');
	contArea2.classList.replace('use','off');
	search.classList.replace('use','off');
	if (contArea2.classList == 'on') {
		contArea2.classList.replace('on', 'off');
	}
	console.log(contArea1);
});

/* 예약관리 클릭 */
res_click.addEventListener('click', function() {
	standard.classList.replace('use', 'on');
	contArea2.classList.replace('off', 'on');
	if (standard.classList == 'on') {
		standard.classList.replace('on', 'off');
	}
	console.log(contArea2);
});
