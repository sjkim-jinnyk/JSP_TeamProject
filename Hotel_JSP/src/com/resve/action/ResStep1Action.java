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
		
		String resIn = request.getParameter("resIn").trim();
		String resOut = request.getParameter("resOut").trim();
		String night = request.getParameter("night").trim();
		String resAdult = request.getParameter("resAdult").trim();
		String resChild = request.getParameter("resChild").trim();
		
		request.setAttribute("resIn", resIn);
		request.setAttribute("resOut", resOut);
		request.setAttribute("night", night);
		request.setAttribute("resAdult", resAdult);
		request.setAttribute("resChild", resChild);
		
		System.out.println(resIn + resOut);
		System.out.println(night);
		System.out.println(resAdult + resChild);
		
		
		ActionForward forward = new ActionForward();		
		forward.setRedirect(false);
		forward.setPath("/view/resve/step1.jsp");				
		return forward;
	}

}
