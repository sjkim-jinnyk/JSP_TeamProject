package com.login.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;

public class UserLoginOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		String userId = request.getParameter("userId").trim();
		String userPwd = request.getParameter("userPwd").trim();
		
		// loginForm에서 넘어온 값 체크
		System.out.println("아이디 >>> " + userId);
		System.out.println("비밀번호 >>> " + userPwd);
		
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(false);
		forward.setPath("index.jsp");	// ★ 유저 메인 페이지(user_main.jsp)를 따로 만들어야 하는지?
		
		return forward;
	}

}
