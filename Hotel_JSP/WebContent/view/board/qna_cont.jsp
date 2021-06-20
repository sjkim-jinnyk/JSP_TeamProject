<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	HttpSession session1 = request.getSession();
	String userId = (String)session1.getAttribute("userId");
	String adminId = (String)session1.getAttribute("adminId");
	System.out.println("admin 세션 >>> " + adminId);	// 세션 정보 확인

%>
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
		<c:set var="dto" value="${cont }" />
		<div class="qna_cont">
			<h2 class="titDep2">${dto.getQnaTitle() }</h2>
			<ul class="infoData">
				<p>작성자</p>
				<li>${dto.getUserId() }</li>
				<p>등록일자</p>
				<li>${dto.getQnaDate().substring(0,10) }</li>
				<p>조회수</p>
				<li>${dto.getQnaHit() }</li>
			</ul>
		
			<div class="qna_txtBox">
				<p>${dto.getQnaContent() }</p>
				<span id="file_p">첨부파일 &nbsp; </span>
				<a href="<%=request.getContextPath() %>/file/qna/${dto.getQnaFile() }" download>${dto.getQnaFile() }</a>
				
				<p id="btn_p">
				<c:if test="${userId == dto.getUserId()}">
					<input type="button" id="qna_del" value="수정" onclick="location.href='qna_update.do?no=${dto.getQnaNo() }&id=${dto.getUserId() }'">
					<input type="button" id="qna_del" value="삭제" onclick="if(confirm('삭제 하시겠습니까?')) {
		                	location.href='qna_delete_ok.do?no=${dto.getQnaNo() }&id=${dto.getUserId() }'
							}else {return; }">
				</c:if>
				</p>
			</div>
		</div>
			<!-- 질문글인 경우 답변글도 같이 보이게 -->
		<c:set var="list" value="${reply }" />
		
		<c:forEach items="${list }" var="reply">
		<div class="qna_reply">
				<c:if test="${reply.getQnaNo() != 0 }">
					<div class="qna_topArea">
						<h4 class="titDep2"><i class="fas fa-angle-double-right"></i> [답변] ${dto.getQnaTitle() }</h4>
						<ul class="infoData">
							<p>답변자</p>
							<li>${reply.getUserId() }</li>
							<p>등록일자</p>
							<li>${reply.getQnaDate().substring(0,10) }</li>
						</ul>
					</div>
					<div class="qna_txtBox">
						<p>${reply.getQnaContent() }</p>
						<span id="file_p">첨부파일 &nbsp; </span>
						<a href="<%=request.getContextPath() %>/file/qna/${reply.getQnaFile() }" download>${reply.getQnaFile() }</a>
						<p id="btn_p">
						<c:if test="${adminId == reply.getUserId()}">
							<input type="button" id="qna_del" value="수정" onclick="location.href='qna_update.do?no=${reply.getQnaNo() }&id=${reply.getUserId() }'">
							<input type="button" id="qna_del" value="삭제" onclick="if(confirm('삭제 하시겠습니까?')) {
		                		location.href='qna_delete_ok.do?no=${reply.getQnaNo() }&id=${reply.getUserId() }'
								}else {return; }">
						</c:if>
						</p>
					</div>
					
				</c:if>
			</div>
		</c:forEach>
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
		<c:set var="admin" value="${admin }" />
		<c:set var="loop_flag" value="false" />
		<c:forEach items="${admin }" var="reply1">
			<c:if test="${not loop_flag }">
					<c:if test="${reply1.getAdminId() == adminId }">
						<p id="btn_p"> 
						<input type="button" id="reply_btn" value="답변" onclick="location.href='qna_reply.do?no=${dto.getQnaNo() }'"></p>
						<c:set var="loop_flag" value="true" />
					</c:if>
			</c:if>
		</c:forEach>
		<p id="btn_list">
		<input type="button" value="목록" id="list_btn" onclick="location.href='qna_list.do'"></p>
			
	</div>
</body>
</html>