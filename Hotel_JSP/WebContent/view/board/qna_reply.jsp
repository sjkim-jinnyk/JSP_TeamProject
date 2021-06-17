<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
		<hr width="50%" color="blue">
		<h3>QnA 게시물 답변 글 폼</h3>
		<hr width="50%" color="blue">
		<br> <br>

		<form method="post" enctype="multipart/form-data"
			action="<%=request.getContextPath() %>/qna_reply_ok.do">
			<c:set var="dto" value="${cont }" />
			<input type="hidden" name="qna_group" value="${dto.getQnaGroup() }">
			<input type="hidden" name="qna_step" value="${dto.getQnaStep() }">

			<table border="1" cellspacing="0" width="350">
				<tr>
					<th>작성자</th>
					<td><input type="text" name="qna_id" value="${adminId }" readonly="readonly"></td>	<!-- 세션으로 관리자 id 받아옴 -->
				</tr>

				<tr>
					<th>글제목</th>
					<td>
						<input type="text" name="qna_title" value="re:${dto.getQnaTitle() }" readonly="readonly">	<!-- 답글 제목을 're:원글'로 고정 -->
					</td>
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