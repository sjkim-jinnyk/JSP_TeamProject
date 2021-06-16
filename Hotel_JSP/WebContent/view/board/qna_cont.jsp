<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세내역</title>
<link rel="stylesheet" href="css/qnaStyle.css" />
<jsp:include page="../../include/header.jsp" />
	
	<div class="topArea">
		<div class="topInner">
			<h2 class="titDep1">Customer Service</h2>
			<p class="pageGuide">
				호텔 이용과 관련된 궁금한 사항을 남겨주시면 신속하게 답변 드리겠습니다.
				<br/>
				항상 고객의 소리에 귀 기울이는 호텔 앤 리조트가 되겠습니다.
			</p>
		</div>
	</div>
	<div class="inner">
		<div class="qna_cont">
		<c:set var="dto" value="${cont }" />
			<h2 class="titDep2">${dto.getQnaTitle() }</h2>
			<ul class="infoData">
				<li id="qna_id">${dto.getUserId() }</li>
				<li>${dto.getQnaDate().substring(0,10) }</li>
				<li id="infohit">조회수: ${dto.getQnaHit() }</li>
			</ul>
			
			<p class="txtBox">
				${dto.getQnaContent() }
				<br><br><br><br>
				첨부파일: 
				<a href="<%=request.getContextPath() %>/file/qna/${dto.getQnaFile() }" download>${dto.getQnaFile() }</a>
			</p>
			
			<ul class="shortList">
				<li class="prev">
					<span>이전 글</span>
					<c:if test="${down.getQnaNo() != 0 }">
						<a href="<%=request.getContextPath() %>/qna_cont.do?no=${down.getQnaNo() }">${down.getQnaTitle() }</a>
					</c:if>
					<c:if test="${down.getQnaNo() == 0 }">
						이전글이 없습니다.
					</c:if>
				</li>
				<li class="next">
					<span>다음 글</span>
					<c:if test="${up.getQnaNo() != 0 }">
						<td><a href="<%=request.getContextPath() %>/qna_cont.do?no=${up.getQnaNo() }">${up.getQnaTitle() }</a></td>
					</c:if>
					<c:if test="${up.getQnaNo() == 0 }">
						<td>다음글이 없습니다.</td>
					</c:if>
				</li>
			</ul>
			<br>
			<input type="button" value="전체목록" id="list_btn" onclick="location.href='qna_list.do'">
	
				
					
						<%-- <input type="button" value="글수정" onclick="location.href='qna_update.do?no=${dto.getQnaNo() }&id=${dto.getUserId() }'">
						<input type="button" value="글삭제" onclick="if(confirm('삭제 하시겠습니까?')) {
		                	location.href='qna_delete_ok.do?no=${dto.getQnaNo() }&id=${dto.getUserId() }'
							}else {return; }">
						<input type="button" value="글답변" onclick="location.href='qna_reply.do?no=${dto.getQnaNo() }'"> --%>
						
					
			<br> <br>
		</div>
			
			<!-- 질문글인 경우 답변글도 같이 보이게 -->
		<div class="qna_reply">
			<c:set var="reply" value="${reply }" />
			<c:if test="${reply.getQnaNo() != 0 }">
				<table border="1" cellspacing="0" width="500">
	
					<tr>
						<th>작성자</th>
						<td>${reply.getUserId() }</td>
					</tr>
	
					<tr>
						<th>글제목</th>
						<td>${reply.getQnaTitle() }</td>
					</tr>
	
					<tr>
						<th>글내용</th>
						<td>
							<textarea rows="7" cols="30" readonly>${reply.getQnaContent() }</textarea>
						</td>
					</tr>
	
					<tr>
						<th>첨부파일</th>
						<td>
							<a href="<%=request.getContextPath() %>/file/qna/${reply.getQnaFile() }" download>${reply.getQnaFile() }</a>
						</td>
					</tr>
	
					<tr>
						<th>조회수</th>
						<td>${reply.getQnaHit() }</td>
					</tr>
	
					<tr>
						<th>작성일자</th>
						<td>${reply.getQnaDate() }</td>
					</tr>
				</table>
				<br> <br>
			</c:if>
		</div>
			
		
	</div>
</body>
</html>