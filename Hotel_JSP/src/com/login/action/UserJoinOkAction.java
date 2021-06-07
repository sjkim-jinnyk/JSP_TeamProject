package com.login.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;

public class UserJoinOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		String userName = request.getParameter("userName").trim();
		String userId = request.getParameter("userId").trim();
		String userPwd = request.getParameter("userPwd").trim();
		String userPwd_check = request.getParameter("userPwd_check").trim();
		String userGen = request.getParameter("userGen").trim();
		String userPhone = request.getParameter("userPhone").trim();
		String userAddr = request.getParameter("userAddr").trim();
		String userEmail_1 = request.getParameter("userEmail_1").trim();
		String userEamil_2 = request.getParameter("userEmail_2").trim();
		String userPoint = request.getParameter("userPoint").trim();
		String userDate = request.getParameter("userDate").trim();
		
		
		// loginForm에서 넘어온 값 체크
		System.out.println("이름 >>> " + userName);
		System.out.println("아이디 >>> " + userId);
		System.out.println("비밀번호 >>> " + userPwd);
		System.out.println("비밀번호 확인 >>> " + userPwd_check);
		System.out.println("성별 >>> " + userGen);
		System.out.println("휴대폰 번호 >>> " + userPhone);
		System.out.println("주소 >>> " + userAddr);
		System.out.println("이메일1 >>> " + userEmail_1);
		System.out.println("이메일2 >>> " + userEamil_2);
		System.out.println("포인트 >>> " + userPoint);
		System.out.println("가입일자 >>> " + userDate);
		
		ActionForward forward = new ActionForward();
		
		
		
		forward.setRedirect(false);
		forward.setPath("index.jsp");	// ★ 유저 메인 페이지(user_main.jsp)를 따로 만들어야 하는지?
		
		return forward;
		
	}

}
