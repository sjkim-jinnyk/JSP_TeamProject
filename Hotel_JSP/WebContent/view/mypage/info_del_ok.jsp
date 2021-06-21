<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
	
	<link rel="stylesheet" href="css/MypageStyle.css">
	
	<jsp:include page="../../include/header.jsp" />
	
	
	<div class="delBox">
		<div class="delinner">
			<p>회원 탈퇴 되었습니다.</p>
			<p>그동안 이용해주셔서 감사합니다.</p>
			<input type="button" value="메인 홈으로 가기" class="goMain_btn" onclick="location.href='index.do'">
		</div>
	</div>
	
	
	<jsp:include page="../../include/footer.jsp" />

</body>
</html>