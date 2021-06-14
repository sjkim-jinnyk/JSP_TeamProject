<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
		<hr width="50%" color="red">
		<h3>QNA 게시판 전체 리스트</h3>
		<hr width="50%" color="red">
		<br> <br>

		<table border="1" cellspacing="0" width="600">
			<tr>
				<th>글번호</th>
				<th>글제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>작성일자</th>
			</tr>

			<c:set var="list" value="${List }" />
			<c:if test="${!empty list }">
				<c:forEach items="${list }" var="dto">
					<tr>
						<td>${dto.getQnaNo() }</td>
						<td>
							<c:forEach begin="1" end="${dto.getQnaStep() }">
	                       		&nbsp;&nbsp;
	                    	</c:forEach>
	                    	<a href="<%=request.getContextPath() %>/qna_cont.do?no=${dto.getQnaNo() }">${dto.getQnaTitle() }</a>
	                    </td>
						<td>${dto.getUserId() }</td>
						<td>${dto.getQnaHit() }</td>
						<td>${dto.getQnaDate().substring(0,10) }</td>
					</tr>
				</c:forEach>
			</c:if>

			<c:if test="${empty list }">
				<tr>
					<td colspan="5" align="center">
						<h3>검색된 게시물이 없습니다.</h3>
					</td>
				</tr>
			</c:if>

			<tr>
				<td colspan="5" align="right">
				<input type="button" value="글쓰기" onclick="location.href='qna_write.do'">	<!-- 세션정보 추가 필요 -->
				</td>
			</tr>
		</table>
		<br>

		<c:if test="${page > block }">
			<a href="qna_list.do?page=1">[맨처음]</a>
			<a href="qna_list.do?page=${startBlock - 1 }">◀</a>
		</c:if>

		<c:forEach begin="${startBlock }" end="${endBlock }" var="i">
			<c:if test="${i == page }">
				<b><a href="qna_list.do?page=${i }">[${i }]</a></b>
			</c:if>

			<c:if test="${i != page }">
				<a href="qna_list.do?page=${i }">[${i }]</a>
			</c:if>
		</c:forEach>

		<c:if test="${endBlock < allPage }">
			<a href="qna_list.do?page=${endBlock + 1 }">▶</a>
			<a href="qna_list.do?page=${allPage }">[마지막]</a>
		</c:if>
		<br> <br>

		<form method="post"
			action="<%=request.getContextPath() %>/qna_search.do">

			<select name="search_field">
				<option value="title">글제목</option>
				<option value="content">글내용</option>
				<option value="title_content">글제목+글내용</option>
				<option value="writer">작성자</option>
			</select>
			&nbsp;
			<input type="text" name="search_content">
			&nbsp; 
			<input type="submit" value="검색">

		</form>

	</div>

</body>
</html>