package com.mypage.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.ReserveDAO;
import com.hotel.model.ReserveDTO;
import com.hotel.model.UserDAO;

public class ResListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 세션값으로 저장되어있는 id 받기
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		
		// 로그인한 id에 해당하는 예약정보 가져오는 메서드
		ReserveDAO dao = ReserveDAO.getInstance();
		List<ReserveDTO> list = dao.resList(userId);
		
		// 로그인 한 id에 해당하는 예약건수 확인하는 메서드
		ReserveDAO dao2 = ReserveDAO.getInstance();
		int count =  dao2.rescount(userId);
				
		request.setAttribute("resList", list);
		request.setAttribute("resCount", count);
		
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(false);
		forward.setPath("/view/mypage/res.jsp");
		
		return forward;
	}

}
