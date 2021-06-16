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
		<h3>QnA 게시글 입력 폼</h3>
		<hr width="50%" color="gray">
		<br> <br>

		<%-- enctype : 이진 파일 업로드 하기 위한 속성 --%>
		<form method="post" enctype="multipart/form-data"
			action="<%=request.getContextPath() %>/qna_write_ok.do">

			<table border="1" cellspacing="0" width="350">
				<tr>
					<th>작성자</th>
					<td><input type="text" name="qna_id" value="${userId }" readonly="readonly"></td>	<!-- 세션으로 작성자 ID 받아옴 -->
				</tr>

				<tr>
					<th>글제목</th>
					<td><input type="text" name="qna_title"></td>
				</tr>

				<tr>
					<th>글내용</th>
					<td>
						<textarea rows="7" cols="30" name="qna_content"></textarea>
					</td>
				</tr>

				<tr>
					<th>파일첨부</th>
					<td><input type="file" name="qna_file"></td>
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