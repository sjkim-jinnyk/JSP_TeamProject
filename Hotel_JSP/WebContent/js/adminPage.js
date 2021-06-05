	const btn = document.querySelector('#check');
	const list = document.querySelector('.content_info');
	
	btn.addEventListener('click', function(){
	    
	  if(list.style.display ==='none') {
		  list.style.display = 'block';
	  }else {
		  list.style.display = 'none';
	  }
	});