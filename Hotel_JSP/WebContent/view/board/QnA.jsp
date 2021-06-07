<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="<%=request.getContextPath()%>/QnA_ok.do">
		<ul>
			<li class="titleArea">
				<div>TITLE</div>
				<div><input type="text" name="title"></div>
			</li>

			<li class="contentArea">
				<div>CONTENT</div>
				<div><textarea name="cont"></textarea></div>
			</li>
			<li class="nameArea">
				<div>Guest Name</div>
				<div><input type="text" name="title"></div>
			</li>
		</ul>	
	</form>
</body>
</html>