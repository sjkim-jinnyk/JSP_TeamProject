<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정</title>
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
			<h3 class="titDep2">공지사항</h3>
			<div class="txtBox">
				<span class="txt">호텔 관련된 모든 공지사항을 적어주세요. 정확한 정보만 기재하시기 바랍니다. </span>
			</div>
			
			<c:set var="dto" value="${cont }" />
			<form method="post" action="<%=request.getContextPath() %>/info_update1_ok.do">
			<div class="frmInfo">
				<c:if test="${!empty dto }">
				<input type="hidden" name="info_no" value="${dto.getInfoNo() }">
				<ul class="intList">
					<li>
						<div class="intWarp">
							<span class="tit">
								<label for="national">ID</label>
							</span>
						</div>
						<div class="intInner">
							<span class="intArea">
								<input type="text" id="dsId" name="info_id" value="${dto.getAdminId() }" readonly="readonly" aria-required="true">
							</span>
						</div>
					</li>
					<li>
						<div class="intWarp">
							<span class="tit">
								<label for="national">TITLE</label>
							</span>
						</div>
						<div class="intInner">
							<span class="intArea">
								<input type="text" id="dsTitle" name="info_title" value="${dto.getInfoTitle() }" placeholder="제목을 입력해주세요." aria-required="true" >
							</span>
						</div>
					</li>
					<li>
						<div class="intWarp">
							<span class="tit">
								<label for="national">CONTENT</label>
							</span>
						</div>
						<div class="intInner">
							<span class="intArea">
								<textarea id="dsCont" class="noLine" name="info_content">${dto.getInfoContent() }</textarea>
							</span>
						</div>
						<p class="txtGuide txtContGuide">
							* 전달 내용을 상세히 기재해 주세요.
						</p>
					</li>
					
				</ul>
				</c:if>
			</div>
			
			<div class="btnArea">
				<input type="submit" class="qna_write_submit" value="수정">
				<input type="reset" class="qna_write_reset" value="다시작성">
			</div>
			</form>
		</div>
	</div>

	<jsp:include page="../../include/footer.jsp" />
</body>
</html>