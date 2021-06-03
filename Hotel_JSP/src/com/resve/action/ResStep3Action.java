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
		// resDate, resTotal, adult_br, child_br, extraBed, request 
		// 데이터 받아서 step3.jsp 로 넘겨줌
		

		String checkIn = request.getParameter("checkIn").trim();
		String checkOut = request.getParameter("checkOut").trim();
		int adult = Integer.parseInt(request.getParameter("adult"));
		int child = Integer.parseInt(request.getParameter("child"));
		
		String roomId = request.getParameter("roomId").trim();
		int roomPrice = Integer.parseInt(request.getParameter("roomPrice"));
		
		String resDate = request.getParameter("resDate").trim();
		String resTotal = request.getParameter("resTotal").trim();
		int adult_br = Integer.parseInt(request.getParameter("adult_br"));
		int child_br = Integer.parseInt(request.getParameter("child_br"));
		int extraBed = Integer.parseInt(request.getParameter("extraBed"));
		String resRequest = request.getParameter("resRequest");
		
		
		request.setAttribute("checkIn", checkIn);
		request.setAttribute("checkOut", checkOut);
		request.setAttribute("adult", adult);
		request.setAttribute("child", child);
		
		request.setAttribute("roomId", roomId);
		request.setAttribute("roomPrice", roomPrice);
		
		request.setAttribute("resDate", resDate);
		request.setAttribute("resTotal", resTotal);
		request.setAttribute("adult_br", adult_br);
		request.setAttribute("child_br", child_br);
		request.setAttribute("extraBed", extraBed);
		request.setAttribute("resRequest", resRequest);
		
		
		System.out.println(checkIn + checkOut);
		System.out.println(adult + child);
		System.out.println(roomId);
		System.out.println(roomPrice);
		System.out.println(resDate);
		System.out.println(resTotal);
		System.out.println(adult_br);
		System.out.println(child_br);
		System.out.println(extraBed);
		System.out.println(resRequest);
		
		
		ActionForward forward = new ActionForward();		
		forward.setRedirect(false);
		forward.setPath("/view/resve/step3.jsp");				
		return forward;
	}

}
