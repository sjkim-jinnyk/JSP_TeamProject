package com.resve.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;

public class ResStep2Action implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		// step1.jsp(객실 선택 폼) 에서 넘어온 
		// checkIn, checkOut, adult, child, 
		// room_name, room_price
		// 데이터 받아서 step2.jsp 로 넘겨줌
		
		HttpSession session = request.getSession();
		
		String resIn = (String)session.getAttribute("resIn");
		String resOut = (String)session.getAttribute("resOut");
		String resAdult = (String)session.getAttribute("resAdult");
		String resChild = (String)session.getAttribute("resChild");
		String num = request.getParameter("num");
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		
		session.setAttribute("resIn", resIn);
		session.setAttribute("resOut", resOut);
		session.setAttribute("resAdult", resAdult);
		session.setAttribute("resChild", resChild);
		session.setAttribute("roomNumber", num);
		session.setAttribute("roomName", name);
		session.setAttribute("roomPrice", price);
		
		
		
		System.out.println(resIn);
		System.out.println(num);
		System.out.println(price);
		
		ActionForward forward = new ActionForward();		
		forward.setRedirect(false);
		
		forward.setPath("/view/resve/res_step2.jsp");				
		return forward;
	}

}
