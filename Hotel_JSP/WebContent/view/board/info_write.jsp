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
		<hr width="50%" color="gray">
		<h3>Info 게시글 입력 폼</h3>
		<hr width="50%" color="gray">
		<br> <br>

		<form method="post"
			action="<%=request.getContextPath() %>/info_write_ok.do">

			<table border="1" cellspacing="0" width="350">
				<tr>
					<th>작성자</th>
					<td><input type="text" name="info_id" value="${id }" readonly="readonly"></td>	<!-- 세션으로 작성자 ID 받아올 예정 -->
				</tr>

				<tr>
					<th>글제목</th>
					<td><input type="text" name="info_title"></td>
				</tr>

				<tr>
					<th>글내용</th>
					<td>
						<textarea rows="7" cols="30" name="info_content"></textarea>
					</td>
				</tr>

				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="글쓰기">
						&nbsp;&nbsp;&nbsp;
						<input type="reset" value="다시작성">
					</td>
				</tr>

			</table>

		</form>

	</div>

</body>
</html>