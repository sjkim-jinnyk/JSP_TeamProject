package com.resve.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.RoomDAO;
import com.hotel.model.RoomDTO;

public class ResStep1Action implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		// step0.jsp (날짜, 입력 폼페이지) 에서 넘어온  
		// 데이터 받아서 step1.jsp 로 넘겨줌

		HttpSession session = request.getSession();
		
		String resIn = request.getParameter("resIn");
		String resOut = request.getParameter("resOut");
		String resAdult = request.getParameter("resAdult");
		String resChild = request.getParameter("resChild");
		
		session.setAttribute("resIn", resIn);
		session.setAttribute("resOut", resOut);
		session.setAttribute("resAdult", resAdult);
		session.setAttribute("resChild", resChild);
		
		System.out.println(resIn);
		
		RoomDAO dao = RoomDAO.getInstance();
		List<RoomDTO> list = dao.getRoomList();
		request.setAttribute("roomList", list);
		
		ActionForward forward = new ActionForward();		
		forward.setRedirect(false);

		forward.setPath("/view/resve/res_step1.jsp");				
		return forward;
	}

}
