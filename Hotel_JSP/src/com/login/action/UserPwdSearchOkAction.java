package com.login.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;

public class UserPwdSearchOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		 
		
		String userId = request.getParameter("userId").trim();
		String userName = request.getParameter("userName").trim();
		
		// pwd_search.jsp 에서 넘어온 값 체크
		System.out.println("아이디 >>> " + userId);
		System.out.println("이름 >>> " + userName);

		ActionForward forward = new ActionForward();
		
		forward.setRedirect(false);
		forward.setPath("/view/login/pwd_search_ok.jsp");		// 찾은 비밀번호 정보 뷰페이지에 띄어줌
		
		return forward;
		
	}

}
