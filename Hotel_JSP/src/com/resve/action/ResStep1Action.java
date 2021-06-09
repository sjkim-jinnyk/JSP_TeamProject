package com.resve.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.RoomDAO;
import com.hotel.model.RoomDTO;

public class ResStep1Action implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		// step0.jsp (날짜, 입력 폼페이지) 에서 넘어온  
		// 데이터 받아서 step1.jsp 로 넘겨줌


		//String checkIn = request.getParameter("checkIn").trim();
		//String checkOut = request.getParameter("checkOut").trim();
		//int adult = Integer.parseInt(request.getParameter("adult"));
		//int child = Integer.parseInt(request.getParameter("child"));
		
		String resln = "";
		
		resln = request.getParameter("resIn").trim();
		String resOut = request.getParameter("resOut").trim();
		String resNight = request.getParameter("resNight").trim();
		String resAdult = request.getParameter("resAdult").trim();
		String resChild = request.getParameter("resChild").trim();

		
		request.setAttribute("resIn", resln);
		request.setAttribute("resOut", resOut);
		request.setAttribute("resNight", resNight);
		request.setAttribute("resAdult", resAdult);
		request.setAttribute("resChild", resChild);
		
		System.out.println(resln);
		
		RoomDAO dao = RoomDAO.getInstance();
		List<RoomDTO> list = dao.getRoomList();
		request.setAttribute("roomList", list);

		ActionForward forward = new ActionForward();		
		forward.setRedirect(false);

		forward.setPath("/view/resve/res_step1.jsp");				
		return forward;
	}

}
