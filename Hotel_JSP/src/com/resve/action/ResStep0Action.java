package com.resve.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;

public class ResStep0Action implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		HttpSession session = request.getSession();
		session.invalidate(); 	// 세션 종료
		
		ActionForward forward = new ActionForward();		
		forward.setRedirect(false);

		forward.setPath("/view/resve/res_step0.jsp");				
		return forward;
		
	}

}
