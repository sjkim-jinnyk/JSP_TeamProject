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
		<hr width="50%" color="gray">
		<h3>Info 게시글 수정 폼</h3>
		<hr width="50%" color="gray">
		<br> <br>

		<form method="post"
			action="<%=request.getContextPath() %>/info_update_ok.do">

			<table border="1" cellspacing="0" width="350">
				<c:set var="dto" value="${cont }" />
				<c:if test="${!empty dto }">
					<input type="hidden" name="info_no" value="${dto.getInfoNo() }">
					<tr>
						<th>작성자</th>
						<td>
							<input type="text" name="info_id" readonly="readonly" value="${id }">
						</td>
					</tr>

					<tr>
						<th>글제목</th>
						<td>
							<input type="text" name="info_title" value="${dto.getInfoTitle() }">
						</td>
					</tr>

					<tr>
						<th>글내용</th>
						<td>
							<textarea rows="7" cols="30" name="info_content">${dto.getInfoContent() }</textarea>
						</td>
					</tr>

					<tr>
						<td colspan="2" align="center">
							<input type="submit" value="수정하기">
							&nbsp;&nbsp;&nbsp; 
							<input type="reset" value="다시작성">
						</td>
					</tr>
				</c:if>

			</table>

		</form>

	</div>
</body>
</html>