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
		<h3>Info 게시물 상세 내역</h3>
		<hr width="50%" color="tomato">
		<br> <br>

		<table border="1" cellspacing="0" width="500">
			<c:set var="dto" value="${cont }" />
			<c:if test="${!empty dto }">
				<tr>
					<th>작성자</th>
					<td>${dto.getAdminId() }</td>
				</tr>

				<tr>
					<th>글제목</th>
					<td>${dto.getInfoTitle() }</td>
				</tr>

				<tr>
					<th>글내용</th>
					<td>
						<textarea rows="7" cols="30" readonly>${dto.getInfoContent() }</textarea>
					</td>
				</tr>

				<tr>
					<th>조회수</th>
					<td>${dto.getInfoHit() }</td>
				</tr>

				<tr>
					<th>작성일자</th>
					<td>${dto.getInfoDate() }</td>
				</tr>
			</c:if>

			<tr>
				<td colspan="2" align="center"><input type="button" value="글수정"
					onclick="location.href='info_update1.do?no=${dto.getInfoNo() }&id=${dto.getAdminId() }'">
					<input type="button" value="글삭제" onclick="if(confirm('삭제 하시겠습니까?')) {
	                	location.href='info_delete_ok.do?no=${dto.getInfoNo() }'
						}else {return; }">
					<input type="button" value="전체목록" onclick="location.href='info_list.do'">
				</td>
			</tr>
		</table>
		<br> <br>
		
		<!-- 다음글, 이전글 -->
		<table border="1" cellspacing="0" width="500">
			<c:set var="up" value="${up }" />
			<c:set var="down" value="${down }" />
				
			<tr>
				<th>다음글</th>
				<c:if test="${up.getInfoNo() != 0 }">
					<td><a href="<%=request.getContextPath() %>/info_cont.do?no=${up.getInfoNo() }">${up.getInfoTitle() }</a></td>
				</c:if>
				<c:if test="${up.getInfoNo() == 0 }">
					<td>다음글이 없습니다.</td>
				</c:if>
			</tr>
			
			<tr>
				<th>이전글</th>
				<c:if test="${down.getInfoNo() != 0 }">
					<td><a href="<%=request.getContextPath() %>/info_cont.do?no=${down.getInfoNo() }">${down.getInfoTitle() }</a></td>
				</c:if>
				<c:if test="${down.getInfoNo() == 0 }">
					<td>이전글이 없습니다.</td>
				</c:if>
			</tr>

		</table>

	</div>
</body>
</html>