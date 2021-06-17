package com.resve.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.RoomDAO;
import com.hotel.model.RoomDTO;

public class ResStep1Action implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();

		String resIn = request.getParameter("resIn");
		String resOut = request.getParameter("resOut");
		int resAdult = Integer.parseInt(request.getParameter("resAdult"));
		int resChild = Integer.parseInt(request.getParameter("resChild"));
		int resNight = Integer.parseInt(request.getParameter("resNight"));
		
		session.setAttribute("resIn", resIn);
		session.setAttribute("resOut", resOut);
		session.setAttribute("resAdult", resAdult);
		session.setAttribute("resChild", resChild);
		session.setAttribute("resNight", resNight);
		
		System.out.println(resNight);
		
		RoomDAO dao = RoomDAO.getInstance();
		List<RoomDTO> list = dao.getRoomList();
		request.setAttribute("roomList", list);
		
		ActionForward forward = new ActionForward();		
		forward.setRedirect(false);

		forward.setPath("/view/resve/res_step1.jsp");				
		return forward;
	}

}
