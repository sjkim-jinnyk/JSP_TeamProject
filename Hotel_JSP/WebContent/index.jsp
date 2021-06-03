<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>

	<jsp:include page="/include/header.jsp" />
    <section class="mainpage" style="margin-bottom: 500px">
        <h1>Experience the Difference</h1>
        <div class="reservation">
            <ul>
                <li class="check_InOut">
                    <label for="check_InOut">CHECK IN/OUT</label>
                    <input type="date" id="check_InOut" name="check_InOut">
                </li>

                <li></li>
                <li></li>
            </ul>

        </div>
    </section>
	<jsp:include page="/include/footer.jsp" />
	
</body>
</html>