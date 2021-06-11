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
		<hr width="50%" color="tomato">
		<h3>QNA 게시물 상세 내역</h3>
		<hr width="50%" color="tomato">
		<br> <br>

		<table border="1" cellspacing="0" width="500">
			<c:set var="dto" value="${cont }" />
			<c:if test="${!empty dto }">
				<tr>
					<th>작성자</th>
					<td>${dto.getUserId() }</td>
				</tr>

				<tr>
					<th>글제목</th>
					<td>${dto.getQnaTitle() }</td>
				</tr>

				<tr>
					<th>글내용</th>
					<td>
						<textarea rows="7" cols="30" readonly>${dto.getQnaContent() }</textarea>
					</td>
				</tr>

				<tr>
					<th>첨부파일</th>
					<td>
						<a href="<%=request.getContextPath() %>/file/qna/${dto.getQnaFile() }" download>${dto.getQnaFile() }</a>
					</td>
				</tr>

				<tr>
					<th>조회수</th>
					<td>${dto.getQnaHit() }</td>
				</tr>

				<tr>
					<th>작성일자</th>
					<td>${dto.getQnaDate() }</td>
				</tr>
			</c:if>

			<tr>
				<td colspan="2" align="center"><input type="button" value="글수정"
					onclick="location.href='qna_update.do?no=${dto.getQnaNo() }&id=${dto.getUserId() }'">
					<input type="button" value="글삭제"
						onclick="if(confirm('삭제 하시겠습니까?')) {
	                				location.href='qna_delete_ok.do?no=${dto.getQnaNo() }&id=${dto.getUserId() }'
								}else {return; }">
					<input type="button" value="글답변" onclick="location.href='qna_reply.do?no=${dto.getQnaNo() }'">
					<input type="button" value="전체목록" onclick="location.href='qna_list.do'">
				</td>
			</tr>
		</table>

	</div>
</body>
</html>