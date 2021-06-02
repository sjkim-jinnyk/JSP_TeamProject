package com.login.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;

public class UserLoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(false);
		forward.setPath("index.jsp");	// ★ 유저 메인 페이지(user_main.jsp)를 따로 만들어야 하는지?
		
		return forward;
	}

}
