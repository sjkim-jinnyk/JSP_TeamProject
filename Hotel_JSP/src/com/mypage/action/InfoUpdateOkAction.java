package com.mypage.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.UserDAO;
import com.hotel.model.UserDTO;

public class InfoUpdateOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String userId = request.getParameter("userId").trim();
		String userName = request.getParameter("userName").trim();
		String userPhone = request.getParameter("userPhone").trim();
		String DBaddr = request.getParameter("DBaddr").trim();
		String userAddr_1 = request.getParameter("userAddr_1").trim();
		String userAddr_2 = request.getParameter("userAddr_2").trim();
		String userAddr_3 = request.getParameter("userAddr_3").trim();
		String userAddr_4 = request.getParameter("userAddr_4").trim();
		String userEmail_1 = request.getParameter("userEmail_1").trim();
		String userEmail_2 = request.getParameter("userEmail_2").trim();
		int userPoint = Integer.parseInt(request.getParameter("userPoint").trim());
		
		// 주소 합치기
		String userAddr = userAddr_1 + " " + userAddr_2 + " " + userAddr_3 + " " + userAddr_4;
		
		// 이메일 합치기
		String userEmail = userEmail_1 + "@" + userEmail_2;
		
		// joinForm에서 넘어온 값 콘솔 창에 출력
		System.out.println("아이디 >>> " + userId);
		System.out.println("이름 >>> " + userName);
		System.out.println("휴대폰 번호 >>> " + userPhone);
		System.out.println("디비주소 >>> " + DBaddr);
		System.out.println("주소 >>> " + userAddr);
		System.out.println("이메일 >>> " + userEmail);
		System.out.println("포인트 >>> " + userPoint);

		// DTO에 값 저장
		
		
		UserDTO dto = new UserDTO();
		dto.setUserId(userId);
		dto.setUserName(userName);
		dto.setUserPhone(userPhone);
		if(userAddr.equals("   ")) {
			// 메일 변경하지 않았을 경우 - 디비 주소로 그대로 저장
			System.out.println("주소 테스트1 >>> " + DBaddr);
			dto.setUserAddr(DBaddr);
		} else {
			// 메일 변경했을 경우 - 변경된 주소로 저장
			System.out.println("주소 테스트2 >>> " + userAddr);
			dto.setUserAddr(userAddr);
		}
		dto.setUserEmail(userEmail);
		dto.setUserPoint(userPoint);
		
		// DB에 업데이트하는 메서드
		UserDAO dao = UserDAO.getInstance();
		int update =  dao.userInfoUpdate(dto);
		
		ActionForward forward = new ActionForward();
		PrintWriter out = response.getWriter();
		
		if(update > 0) {
			// 회원 정보 수정 성공
			forward.setRedirect(true);
			forward.setPath("info_update.do");
		} else {
			// 회원 정보 수정 실패
			out.println("<script>");
			out.println("alert('회원 정보 수정 실패했습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}
		
		return forward;
	}

}
