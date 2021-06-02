<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
		<h3>비밀번호 찾기</h3>
		<form method="post" action="<%=request.getContextPath() %>/user_pwd_search_ok.do">
			<table border="1" cellspacing="0" width="25%">
				<tr>
					<td>아이디 &nbsp;&nbsp;&nbsp;&nbsp;: <input id="user_id" name="user_id"></td>
				</tr>
				<tr>
					<td>이름  &nbsp;&nbsp;&nbsp;&nbsp;: <input id="user_name" name="user_name"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="찾기">
					</td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>