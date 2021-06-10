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
	   <hr width="50%" color="gray">
	   <h3>QnA 게시글 수정 폼</h3>
	   <hr width="50%" color="gray">
	   <br> <br>
	   
	   <%-- enctype : 이진 파일 업로드 하기 위한 속성 --%>
	   <form method="post" enctype="multipart/form-data"
	      action="<%=request.getContextPath() %>/qna_update_ok.do">
	   
	      <table border="1" cellspacing="0" width="350">
	      	<c:set var="dto" value="${cont }" />
	     	 <c:if test="${!empty dto }">
	     	 <input type="hidden" name="qna_no" value="${dto.getQnaNo() }">
	         <tr>
	         	<th>작성자</th>
	            <td><input type="text" name="qna_id" readonly="readonly" value="${dto.getUserId() }"></td>
	         </tr>
	         
	         <tr>
	         	<th>글제목</th>
	            <td> <input type="text" name="qna_title" value="${dto.getQnaTitle() }"> </td>
	         </tr>
	         
	         <tr>
	         	<th>글내용</th>
	            <td> 
	            	<textarea rows="7" cols="30" name="qna_content">${dto.getQnaContent() }</textarea>
	            </td>
	         </tr>
	         
	         <tr>
	         	<th>다른 파일첨부</th>
	            <td> <input type="file" name="qna_file"> </td>
	         </tr>
	         
	         <input type="hidden" name="qna_file_old" value="${dto.getQnaFile() }">
	         
	         <tr>
	            <td colspan="2" align="center"> 
	               <input type="submit" value="수정하기">
	                    &nbsp;&nbsp;&nbsp;
	               <input type="reset" value="다시작성"> 
	            </td>
	         </tr>
	         </c:if>
	      
	      </table>
	   
	   </form>
	   
	</div>
</body>
</html>