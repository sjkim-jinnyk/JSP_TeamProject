package com.mypage.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.ReserveDAO;
import com.hotel.model.ReserveDTO;
import com.hotel.model.UserDAO;
import com.hotel.model.UserDTO;

public class InfoUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 세션값으로 저장되어있는 id 받기
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		
		// 로그인된 유저 정보 가져오는 메서드
		UserDAO dao = UserDAO.getInstance();
		UserDTO dto = dao.getUser(userId);
		
		request.setAttribute("userCont", dto);
		
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(false);
		forward.setPath("/view/mypage/info_update.jsp");
		
		return forward;
	}

}
