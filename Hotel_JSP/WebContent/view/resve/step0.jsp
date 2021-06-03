<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%-- 헤더 --%>
	
	
	<%-- step0.do : 투숙기간, 객실 및 인원 선택 --%>
	<section class="step0">
		<h1>BOOKING</h1>
		<h3>Step 1 - 객실, 요금 선택</h3><br>
		
		
		<div>
			<table border="1" width="80%" height="60px">
				<tr>
				    <td> DATE&nbsp;&nbsp; 
				    	<input type="date" id="checkIn" name="checkIn"> - 
				    	<input type="date" id="checkOut" name="checkOut">
				    	&nbsp;|&nbsp;
				    	<input id="night" name="night" size=2 >박 <br> </td>
					<td>
						ADULTS <input type="number" min="1" max="3" id="adult" name="adult" value="1"> 명 &nbsp;&nbsp;&nbsp;&nbsp;
						CHILDREN <input type="number" min="0" max="3" id="child" name="child" value="0"> 명
					</td>
					<td><input type="submit" value="객실 검색"></td>

				</tr>				
		</table>
	</form>
	</section>
	
	<jsp:include page="../../include/footer.jsp" />
	
</body>

			</table>
			<br>
			<table border="1" width="80%">
				<tr>
					<td><img alt="" src="../../image/resve01.jpg" width="300px"></td>
					<td>
						[Member Exclusive] SMART CHOICE<br>
						클럽 조선 리워드 회원분들을 위한 추가 3% 할인 혜택!<br><br><br>
						<h3>310,400KRW ~</h3><br>
						1박 / 세금 별도
					</td>
					<td><a href="<%=request.getContextPath()%>/step1.do">RESERVE</a></td>	
				</tr>
				<tr>
					<td><img alt="" src="../../image/resve01.jpg" width="300px"></td>
					<td>
						[Member Exclusive] SMART CHOICE<br>
						클럽 조선 리워드 회원분들을 위한 추가 3% 할인 혜택!<br><br><br>
						<h3>310,400KRW ~</h3><br>
						1박 / 세금 별도
					</td>
					<td><a href="<%=request.getContextPath()%>/step1.do">RESERVE</a></td>	
				</tr>
				<tr>
					<td><img alt="" src="../../image/resve01.jpg" width="300px"></td>
					<td>
						[Member Exclusive] SMART CHOICE<br>
						클럽 조선 리워드 회원분들을 위한 추가 3% 할인 혜택!<br><br><br>
						<h3>310,400KRW ~</h3><br>
						1박 / 세금 별도
					</td>
					<td><a href="<%=request.getContextPath()%>/step1.do">RESERVE</a></td>	
				</tr>
				<tr>
					<td><img alt="" src="../../image/resve01.jpg" width="300px"></td>
					<td>
						[Member Exclusive] SMART CHOICE<br>
						클럽 조선 리워드 회원분들을 위한 추가 3% 할인 혜택!<br><br><br>
						<h3>310,400KRW ~</h3><br>
						1박 / 세금 별도
					</td>
					<td><a href="<%=request.getContextPath()%>/step1.do">RESERVE</a></td>	
				</tr>
			</table>

			
		</div>
	
	</section>
	
	<%-- 푸터 --%>
	
</body>
</html>