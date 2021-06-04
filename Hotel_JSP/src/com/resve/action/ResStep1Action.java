package com.resve.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;

public class ResStep1Action implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		// step0.jsp (날짜, 입력 폼페이지) 에서 넘어온 checkIn, checkOut, adult, child 
		// 데이터 받아서 step1.jsp 로 넘겨줌

		String checkIn = request.getParameter("checkIn").trim();
		String checkOut = request.getParameter("checkOut").trim();
		int adult = Integer.parseInt(request.getParameter("adult"));
		int child = Integer.parseInt(request.getParameter("child"));
		
		request.setAttribute("checkIn", checkIn);
		request.setAttribute("checkOut", checkOut);
		request.setAttribute("adult", adult);
		request.setAttribute("child", child);
		
		System.out.println(checkIn + checkOut);
		System.out.println(adult + child);
		
		
		ActionForward forward = new ActionForward();		
		forward.setRedirect(false);
		forward.setPath("/view/resve/step1.jsp");				

		return forward;
	}

}
