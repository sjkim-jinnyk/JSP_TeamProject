package com.login.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;

public class UserIdSearchOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		String userName = request.getParameter("userName").trim();
		String userPhone = request.getParameter("userPhone").trim();
		
		// id_search.jsp 에서 넘어온 값 체크
		System.out.println("이름 >>> " + userName);
		System.out.println("핸드폰 번호 >>> " + userPhone);
		
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(false);
		forward.setPath("/view/login/id_search_ok.jsp");		// 찾은 아이디 정보 뷰 페이지로 이동 
		
		return forward;
		
	
	}

}
