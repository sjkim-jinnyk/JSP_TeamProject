package com.resve.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;

public class ResStep4Action implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		// step3.jsp(예약자 정보 입력 폼) 에서 넘어온
		// checkIn, checkOut, adult, child,
		// room_name, room_price
		// resDate, resTotal, adult_br, child_br, extraBed, request 
		// user_id, user_name
		// 데이터 받아서 DB로 보내고,  step4.jsp 로 이동

		
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/view/resve/step4.jsp");
		return forward;
	}

}
