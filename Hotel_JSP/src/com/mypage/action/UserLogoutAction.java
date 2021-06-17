package com.mypage.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;

public class UserLogoutAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		HttpSession session = request.getSession();
		ActionForward forward = new ActionForward();
		
		// 세션 만료
		session.removeAttribute("userId");
        session.removeAttribute("userName");
        session.removeAttribute("userPoint");
		
		forward.setRedirect(true);
		forward.setPath("index.do");
		
		return forward;
	}

}