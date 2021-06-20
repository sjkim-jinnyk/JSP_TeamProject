<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 수정</title>
<link rel="stylesheet" href="css/qnaStyle.css" />
<jsp:include page="../../include/header.jsp" />

<div class="topArea">
		<div class="topInner">
			<h2 class="titDep1">Customer Service</h2>
			<p class="pageGuide">
				언제나 고객의 목소리에 귀기울이고 있습니다.
				<br/>
				소중한 충고와 격려, 또는 제안의 말씀을 남겨 주시면 최대한 반영하여 더 나은 서비스로 보답하겠습니다.
			</p>
		</div>
	</div>
	
	<div class="inner">
		<div class="myContents">
			<h3 class="titDep2">Q&A</h3>
			<div class="txtBox">
				<span class="txt">감사합니다. 문의 내용은 1~2일내에 답변해드리겠습니다.</span>
			</div>
			
		<%-- enctype : 이진 파일 업로드 하기 위한 속성 --%>
		<form method="post" enctype="multipart/form-data"
			action="<%=request.getContextPath() %>/qna_update_ok.do">
			<c:set var="dto" value="${cont }" />
			<c:if test="${!empty dto }">
					<input type="hidden" name="qna_no" value="${dto.getQnaNo() }">
					<input type="hidden" name="qna_group" value="${dto.getQnaGroup() }">
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
								<input type="text"  id="dsId" name="qna_id" aria-required="true" value="${dto.getUserId() }" readonly="readonly">
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
								<input type="text" id="dsTitle" name="qna_title" aria-required="true" value="${dto.getQnaTitle() }">
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
								<textarea id="dsCont" name="qna_content" class="noLine" placeholder="불건전한 내용(예: 개인정보보안, 불충분한 증거/귀책 사유에 대한 개인 음해성/음란성 비방 등) 또는 광고성 게시물은
사전 통보없이 삭제 처리될 수 있으며, 등록된 의견은 수정이 불가하오니 이 점 양지하여 주시기 바랍니다.">${dto.getQnaContent() }</textarea>
							</span>
						</div>
						<p class="txtGuide txtContGuide">
							* 문의 내용을 상세히 기재해 주시면 정확한 답변에 도움이 됩니다.
						</p>
					</li>
					<li>
						<div class="intWarp">
							<span class="tit">
								<label for="national">FILE</label>
							</span>
						</div>
						<div class="intInner">
							<div class="fileUpload">
								<div class="intDel">
									<input type="text" id="nmFile" class="fileName" readonly="readonly">
									<button type="button" class="btnDel">삭제</button>									
								</div>
							</div>
							<label for="qna_file" id="qna_file_name"class="btnSC btnM">다른 파일선택</label>
							<input type="file" id="qna_file" name="qna_file" onchange="fileUpload()" class="qna_file">
							<input type="hidden" name="qna_file_old" value="${dto.getQnaFile() }">
						</div>
						<p class="txtGuide">
	                      	 * 첨부가능 파일종류 : jpg, png, bmp, gif, jpeg, doc, docx, xls, xlsx, ppt, pptx, hwp, pdf, eml
	                        (용량 20MB)
	                    </p>
					</li>		
				</ul>
			</div>
			<div class="btnArea">
				<input type="submit" class="qna_write_submit" value="수정">
				<input type="reset" class="qna_write_reset" value="다시작성">
			</div>
			</c:if>
			</form>
		
		</div>
	</div>

	<script type="text/javascript">
	function fileUpload(){
		var fileInput = document.getElementsByClassName("qna_file");

		for( var i=0; i<fileInput.length; i++ ){
			if( fileInput[i].files.length > 0 ){
				for( var j = 0; j < fileInput[i].files.length; j++ ){
					let file_name = fileInput[i].files[j].name
			
					$('#nmFile').val(file_name);
					
					console.log(file_name); // 파일명 출력
				}
			}
		}

	}
	</script>
	<jsp:include page="../../include/footer.jsp" />
</body>
</html>