package com.mypage.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.ReserveDAO;
import com.hotel.model.ReserveDTO;

public class MypageMainAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 세션값 받기
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		
		// 로그인 한 아이디에 해당하는 예약건수 확인하는 메서드
		ReserveDAO dao = ReserveDAO.getInstance();
		int count =  dao.rescount(userId);
		
		request.setAttribute("resCount", count);
		
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(false);
		forward.setPath("/view/mypage/mypage_main.jsp");
		
		return forward;
	}

}
