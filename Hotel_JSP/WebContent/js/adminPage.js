/* check 클릭시 상세내역 오픈*/
/*const btn = document.querySelector('#check');
const list = document.querySelector('.content_info');

btn.addEventListener('click', function() {

	if (list.style.display === 'none') {
		list.style.display = 'block';
	} else {
		list.style.display = 'none';
	}
});*/

$(function() {
	$("#btn").click(function() {
		let room = $("#roomName").val();
		let checkIn = $("#checkIn").val();
		let checkOut = $("#checkOut").val();
		console.log(room);
		console.log(checkIn);
		console.log(checkOut);

		$.ajax({
			type : "post",
			url : "./view/admin/adminPage1.jsp",
			data : {
				"roomName" : room,
				"checkIn" : checkIn,
				"checkOut" : checkOut
			},
			datatype : "xml",
			success : function(data) {
				alert('성공');
				console.log(data);
				let table = "";
				console.log($(data).find("room"));
				$(data).find("room").each(function(){
					
					table += "<tr>";
					table += "<td><img alt='상품' src='image/"+$(this).find("name").text()+".jpg'></td>"
					table += "<td colspan='2'>"+$(this).find("name").text()+"</td>"
					table += "</tr>";
					table += "<tr>";
					table += "<td>"+$(this).find("price").text()+"</td>"
					table += "<td>"+$(this).find("content").text()+"</td>"
					table += "<td>"+$(this).find("size").text()+"</td>"
					table += "</tr>";
					
				});
				
				$("#DELUXETWIN").append(table);

			},
			error : function() {
				alert("오류");
			}

		});
	/*	$.ajax({
			type : "post",
			url : "./view/admin/adminPage2.jsp",
			data : {
				"roomName" : room,
				"checkIn" : checkIn,
				"checkOut" : checkOut
			},
			datatype : "xml",
			success : function(data) {
				alert('성공');
				console.log(data);
				let table = "";
				console.log($(data).find("reserve"));
				$(data).find("reserve").each(function(){
					
					table += "<tr>";
					table += "<td>"+$(this).find("name").text()+"</td>"
					table += "<td>"+$(this).find("checkin").text()+"</td>"
					table += "<td>"+$(this).find("checkout").text()+"</td>"
					table += "</tr>";
					
				});
				
				$("#twin").after(table);

			},
			error : function() {
				alert("오류");
			}

		}); */
	});
	
	

});



/* 객실관리, 예약관리 클릭시 페이시 숨김 or 보임*/
const room_click = document.querySelector('#room_click');
const res_click = document.querySelector('#res_click');
const contArea1 = document.querySelector('#contArea1');
const contArea2 = document.querySelector('#contArea2');

room_click.addEventListener('click', function() {
	contArea1.classList.replace('off', 'on');
	if (contArea2.classList == 'on') {
		contArea2.classList.replace('on', 'off');
	}
	console.log(contArea1);
});

res_click.addEventListener('click', function() {
	contArea2.classList.replace('off', 'on');
	if (contArea1.classList == 'on') {
		contArea1.classList.replace('on', 'off');
	}
	console.log(contArea2);
});
