/* check 클릭시 상세내역 오픈*/
const btn = document.querySelector('#check');
const list = document.querySelector('.content_info');

btn.addEventListener('click', function() {

	if (list.style.display === 'none') {
		list.style.display = 'block';
	} else {
		list.style.display = 'none';
	}
});

/* 객실관리, 예약관리 클릭시 페이시 숨김 or 보임*/
/*const room_click = document.querySelector('#room_click');
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
});*/
