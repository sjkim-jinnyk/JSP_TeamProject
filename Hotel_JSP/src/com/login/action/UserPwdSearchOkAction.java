package com.login.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.UserDAO;

public class UserPwdSearchOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		 
		
		String userId = request.getParameter("userId").trim();
		String userName = request.getParameter("userName").trim();
		
		// pwd_search.jsp 에서 넘어온 값 체크
		System.out.println("아이디 >>> " + userId);
		System.out.println("이름 >>> " + userName);
		
		UserDAO dao = UserDAO.getInstance();
		String pwdInfo = dao.pwdSearch(userId, userName);
		
		request.setAttribute("pwdInfo", pwdInfo);		// 찾은 비밀번호 정보
		request.setAttribute("userName", userName);		// 유저 이름
		
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(false);
		forward.setPath("/view/login/pwd_search_ok.jsp");		
		
		return forward;
		
	}

}
