package com.resve.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;

public class ResStep3Action implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		
		String resAdultBr = request.getParameter("resAdultBr");
		String resChildBr = request.getParameter("resChildBr");
		String resBed = request.getParameter("resBed");
		String resRequest = request.getParameter("resRequest");
		
		String roomTotal = request.getParameter("roomTotal");
		String resTax = request.getParameter("resTax");
		String resPretax = request.getParameter("resPretax");
		String resTotal = request.getParameter("resTotal");
		
		String aBrPrice = request.getParameter("aBrPrice");
		String cBrPrice = request.getParameter("cBrPrice");
		String bedPrice = request.getParameter("bedPrice");
		
		session.setAttribute("resAdultBr", resAdultBr); // 어른 조식
		session.setAttribute("resChildBr", resChildBr); // 아이 조식
		session.setAttribute("resBed", resBed);		// 엑스트라 베드 수
		session.setAttribute("resRequest", resRequest);		// 문의사항
		
		session.setAttribute("roomTotal", roomTotal); // 방 가격 * 숙박일수
		session.setAttribute("resTax", resTax); // 방 가격 * 숙박일수
		session.setAttribute("resPretax", resPretax); // 세금미포함 총금액
		session.setAttribute("resTotal", resTotal); // 총금액 (pretax + tax)
		
		session.setAttribute("aBrPrice", aBrPrice); 
		session.setAttribute("cBrPrice", cBrPrice); 
		session.setAttribute("bedPrice", bedPrice); 
		
		System.out.println(resTotal);
		
		ActionForward forward = new ActionForward();		
		forward.setRedirect(false);
		
		forward.setPath("/view/resve/res_step3.jsp");				
		return forward;
	}

}
