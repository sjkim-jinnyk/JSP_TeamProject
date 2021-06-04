package com.resve.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;

public class ResStep3Action implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		// step2.jsp(옵션 선택 폼) 에서 넘어온 
		// checkIn, checkOut, adult, child,
		// room_name, room_price
		// adult_br, child_br, extraBed, request 
		// 데이터 받아서 step3.jsp 로 넘겨줌
		
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(false);
		forward.setPath("/view/resve/step3.jsp");		
		
		return forward;
	}

}
