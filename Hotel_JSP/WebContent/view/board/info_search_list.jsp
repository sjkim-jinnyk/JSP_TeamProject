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
		<hr width="50%" color="red">
		<h3>Info 게시판 전체 리스트</h3>
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
						<td>${dto.getInfoNo() }</td>
						<td>
	                    	<a href="<%=request.getContextPath() %>/info_cont.do?no=${dto.getInfoNo() }">${dto.getInfoTitle() }</a>
						</td>
						<td>${dto.getAdminId() }</td>
						<td>${dto.getInfoHit() }</td>
						<td>${dto.getInfoDate().substring(0,10) }</td>
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
					<input type="button" value="전체목록" onclick="location.href='info_list.do'">
				</td>
			</tr>
		</table>
		<br>

		<c:if test="${page > block }">
			<a href="info_search.do?page=1&search_field=${search_field }&search_content=${search_content }">[맨처음]</a>
			<a href="info_search.do?page=${startBlock - 1 }&search_field=${search_field }&search_content=${search_content }">◀</a>
		</c:if>

		<c:forEach begin="${startBlock }" end="${endBlock }" var="i">
			<c:if test="${i == page }">
				<b><a href="info_search.do?page=${i }&search_field=${search_field }&search_content=${search_content }">[${i }]</a></b>
			</c:if>

			<c:if test="${i != page }">
				<a href="info_search.do?page=${i }&search_field=${search_field }&search_content=${search_content }">[${i }]</a>
			</c:if>
		</c:forEach>

		<c:if test="${endBlock < allPage }">
			<a href="info_search.do?page=${endBlock + 1 }&search_field=${search_field }&search_content=${search_content }">▶</a>
			<a href="info_search.do?page=${allPage }&search_field=${search_field }&search_content=${search_content }">[마지막]</a>
		</c:if>
		<br> <br>

	</div>

</body>
</html>