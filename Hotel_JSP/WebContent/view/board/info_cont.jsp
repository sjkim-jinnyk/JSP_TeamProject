<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	HttpSession session1 = request.getSession();
	String adminId = (String)session1.getAttribute("adminId");
	System.out.println("admin 세션 >>> " + adminId);	// 세션 정보 확인

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세내역</title>
<link rel="stylesheet" href="css/qnaStyle.css" />
<jsp:include page="../../include/header.jsp" />

	<div class="topArea">
		<div class="topInner">
			<h2 class="titDep1">Info / News</h2>
			<p class="pageGuide">
				호텔과 관련된 공지사항을 확인해보세요.
				<br/>
				여러가지 이벤트, 뉴스, 정보가 기다리고 있습니다.
			</p>
		</div>
	</div>
	<div class="inner">
		<c:set var="dto" value="${cont }" />
		<div class="qna_cont">
			<h2 class="titDep2">${dto.getInfoTitle() }</h2>
			<ul class="infoData">
			<c:if test="${!empty dto }">
				<p>작성자</p>
				<li>${dto.getAdminId() }</li>
				<p>등록일자</p>
				<li>${dto.getInfoDate().substring(0,10) }</li>
				<p>조회수</p>
				<li>${dto.getInfoHit() }</li>
			</ul>
		
			<div class="qna_txtBox">
				<p>${dto.getInfoContent() }</p>

				<p id="btn_p">
				<%-- <c:if test="${adminId == dto.getAdminId()}">
					<input type="button" id="qna_del" value="수정" onclick="location.href='info_update1.do?no=${dto.getInfoNo() }&id=${dto.getAdminId() }'">
					<input type="button" id="qna_del" value="삭제" onclick="if(confirm('삭제 하시겠습니까?')) {
		                	location.href='info_delete_ok.do?no=${dto.getInfoNo() }'
							}else {return; }">
				</c:if> --%>
					<c:set var="admin" value="${admin }" />
					<c:set var="loop_flag" value="false" />
					<c:forEach items="${admin }" var="reply1">
						<c:if test="${not loop_flag }">
							<c:if test="${reply1.getAdminId() == adminId }">
					
								<input type="button" id="qna_del" value="수정" onclick="location.href='info_update1.do?no=${dto.getInfoNo() }&id=${dto.getAdminId() }'">
								<input type="button" id="qna_del" value="삭제" onclick="if(confirm('삭제 하시겠습니까?')) {
	                				location.href='info_delete_ok.do?no=${dto.getInfoNo() }'}else {return; }">
								<c:set var="loop_flag" value="true" />
							</c:if>
						</c:if>
					</c:forEach>
				</c:if>
				</p>	
			</div>
		</div>
		<c:set var="up" value="${up }" />
		<c:set var="down" value="${down }" />
		<ul class="shortList">
			<li class="prev">
				<span>이전 글</span>
				<c:if test="${down.getInfoNo() != 0 }">
					<a href="<%=request.getContextPath() %>/info_cont.do?no=${down.getInfoNo() }">${down.getInfoTitle() }</a>
				</c:if>
				<c:if test="${down.getInfoNo() == 0 }">
					이전글이 없습니다.
				</c:if>
			</li>
			<li class="next">
				<span>다음 글</span>
				<c:if test="${up.getInfoNo() != 0 }">
					<a href="<%=request.getContextPath() %>/info_cont.do?no=${up.getInfoNo() }">${up.getInfoTitle() }</a>
				</c:if>
				<c:if test="${up.getInfoNo() == 0 }">
					<td>다음글이 없습니다.</td>
				</c:if>
			</li>
		</ul>
		<br>
		<p id="btn_list"> <input type="button" value="목록" id="list_btn" onclick="location.href='info_list.do'"> </p>
	</div>

</body>
</html>