package com.resve.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;

public class ResStep2Action implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();

		String num = request.getParameter("num");
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		
		session.setAttribute("roomNumber", num);
		session.setAttribute("roomName", name);
		session.setAttribute("roomPrice", price);
		
		System.out.println(price);
		
		ActionForward forward = new ActionForward();		
		forward.setRedirect(false);
		
		forward.setPath("/view/resve/res_step2.jsp");				
		return forward;
	}

}
