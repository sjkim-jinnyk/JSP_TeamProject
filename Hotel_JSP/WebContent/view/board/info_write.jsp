<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	HttpSession session1 = request.getSession();
	String adminId = (String)session1.getAttribute("adminId");
	System.out.println("admin 세션 >>> " + adminId);	// 세션 정보 확인

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성</title>
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
			
			<form method="post"
			action="<%=request.getContextPath() %>/info_write_ok.do">
			<div class="frmInfo">
				<ul class="intList">
					<li>
						<div class="intWarp">
							<span class="tit">
								<label for="national">ID</label>
							</span>
						</div>
						<div class="intInner">
							<span class="intArea">
								<input type="text" id="dsId" name="info_id" value="${adminId }" aria-required="true" readonly="readonly"><!-- 세션으로 작성자 ID 받아옴 -->
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
								<input type="text" id="dsTitle" name="info_title" aria-required="true" placeholder="제목을 입력해주세요.">
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
								<textarea id="dsCont"  name="info_content"class="noLine" placeholder=" 불건전한 내용(예: 개인정보보안, 불충분한 증거/귀책 사유에 대한 개인 음해성/음란성 비방 등) 또는 광고성 게시물은
사전 통보없이 삭제 처리될 수 있습니다. 정확한 전달 내용만을 기재해 주세요."></textarea>
							</span>
						</div>
						<p class="txtGuide txtContGuide">
							* 전달 내용을 상세히 기재해 주세요.
						</p>
					</li>
					
				</ul>
			</div>
			<div class="btnArea">
				<input type="submit" class="qna_write_submit" value="글쓰기">
				<input type="reset" class="qna_write_reset" value="다시작성">
			</div>
			</form>
		
		</div>
	</div>



	<jsp:include page="../../include/footer.jsp" />
	
	

</body>
</html>