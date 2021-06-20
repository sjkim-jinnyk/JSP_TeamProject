<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Info 검색</title>
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
		<div class="myContents">
			<h3 class="titDep2">INFO<input type="button" value="공지작성" class="qna_write_button" onclick="location.href='info_write.do'"></h3>
			
			<form method="post"
			action="<%=request.getContextPath() %>/info_search.do">
			<div class="searchBox">
				<div class="searchOp">
					<div class="selectWrap">
					<select name="search_field" class="select_ct">
						<option value="title">글제목</option>
						<option value="content">글내용</option>
						<option value="title_content">글제목+글내용</option>
						<option value="writer">작성자</option>
					</select>
					</div>
					<div class="intWord">
					<span class="intArea">
						<input type="text" name="search_content" placeholder="검색어를 입력해주세요." class="search_txt">
					</span>		
				</div>
				</div>		
				<div class="btnWrap">
					<input type="submit" value="검색" class="search_button">
				</div>
			</div>
			</form>
		</div>
		
		<ul class="qnaType">
			<li id="type0">번호</li>
			<li id="type1">제목</li>
			<li id="type2">작성자</li>
			<li id="type3">조회수</li>
			<li id="type4">작성일자</li>
		</ul>
		
		<div id="qnaTab" class="qnaTab">
			
			
			<div class="qnaTabType">
				<c:set var="list" value="${List }" />
					<c:if test="${!empty list }">
						<c:forEach items="${list }" var="dto">
				<ul class="qnaList">
					<li id="type0">
						<strong class="listTit"> 
							${dto.getInfoNo() }
						</strong>
					</li>
					<li id="type1"><a href="<%=request.getContextPath() %>/info_cont.do?no=${dto.getInfoNo() }">${dto.getInfoTitle() }</a></span>
					<li id="type2">${dto.getAdminId() }</li>
					<li id="type3">${dto.getInfoHit() }</li>
					<li id="type4">${dto.getInfoDate().substring(0,10) }</li>
				
				</ul>
						</c:forEach>
					</c:if>
			</div>	
			
			
			<c:if test="${empty list }">
				<tr>
					<td colspan="5" align="center">
						<h3>검색된 게시물이 없습니다.</h3>
					</td>
				</tr>
			</c:if>
			<p id="btn_list">
			<input type="button" id="list_btn" value="목록" onclick="location.href='info_list.do'"> </p>
		</div>
		
		<div class="qna_paging">
		<c:if test="${page > block }">
			<a href="info_search.do?page=1&search_field=${search_field }&search_content=${search_content }">◀◀</a>
			<a href="info_search.do?page=${startBlock - 1 }&search_field=${search_field }&search_content=${search_content }">◀</a>
		</c:if>

		<c:forEach begin="${startBlock }" end="${endBlock }" var="i">
			<c:if test="${i == page }">
				<span class="select_page"><a href="info_search.do?page=${i }&search_field=${search_field }&search_content=${search_content }">${i }</a></span>
			</c:if>

			<c:if test="${i != page }">
				<a href="info_search.do?page=${i }&search_field=${search_field }&search_content=${search_content }">${i }</a>
			</c:if>
		</c:forEach>

		<c:if test="${endBlock < allPage }">
			<a href="info_search.do?page=${endBlock + 1 }&search_field=${search_field }&search_content=${search_content }">▶</a>
			<a href="info_search.do?page=${allPage }&search_field=${search_field }&search_content=${search_content }">▶▶</a>
		</c:if>
		</div>
		
	</div>
	
	
	<jsp:include page="../../include/footer.jsp" />
			


</body>
</html>