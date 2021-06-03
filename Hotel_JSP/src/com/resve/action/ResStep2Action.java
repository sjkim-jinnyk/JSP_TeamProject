package com.resve.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;

public class ResStep2Action implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		// step1.jsp(객실 선택 폼) 에서 넘어온 
		// checkIn, checkOut, adult, child, 
		// room_name, room_price
		// 데이터 받아서 step2.jsp 로 넘겨줌
		
		String checkIn = request.getParameter("checkIn").trim();
		String checkOut = request.getParameter("checkOut").trim();
		int adult = Integer.parseInt(request.getParameter("adult"));
		int child = Integer.parseInt(request.getParameter("child"));
		
		String roomId = request.getParameter("roomId").trim();
		int roomPrice = Integer.parseInt(request.getParameter("roomPrice"));
		
		request.setAttribute("checkIn", checkIn);
		request.setAttribute("checkOut", checkOut);
		request.setAttribute("adult", adult);
		request.setAttribute("child", child);
		
		request.setAttribute("roomId", roomId);
		request.setAttribute("roomPrice", roomPrice);
		
		
		System.out.println(checkIn + checkOut);
		System.out.println(adult + child);
		System.out.println(roomId);
		System.out.println(roomPrice);
		
		ActionForward forward = new ActionForward();		
		forward.setRedirect(false);
		forward.setPath("/view/resve/step2.jsp");				
		return forward;
	}

}
