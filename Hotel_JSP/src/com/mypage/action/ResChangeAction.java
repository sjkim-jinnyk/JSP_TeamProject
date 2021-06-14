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

public class ResChangeAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 세션값으로 저장되어있는 id 받기
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		
		ReserveDAO dao = ReserveDAO.getInstance();
		List<ReserveDTO> list = dao.resList(userId);
		
		request.setAttribute("resList", list);
		
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(false);
		forward.setPath("/view/mypage/res_change.jsp");
		
		return forward;
	}

}
