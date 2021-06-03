package com.login.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;

public class UserIdSearchOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		String user_name = request.getParameter("user_name").trim();
		String user_phone = request.getParameter("user_phone").trim();
		
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(false);
		forward.setPath("/view/login/id_search_ok.jsp");		// 찾은 아이디 정보 뷰 페이지로 이동 
		
		return forward;
		
	
	}

}
