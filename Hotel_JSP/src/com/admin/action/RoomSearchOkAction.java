package com.admin.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.ReserveDAO;
import com.hotel.model.ReserveDTO;
import com.hotel.model.RoomDAO;
import com.hotel.model.RoomDTO;

public class RoomSearchOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		String roomName = request.getParameter("roomName").trim();
		String checkIn = request.getParameter("checkIn").trim();	
		String checkOut = request.getParameter("checkOut").trim();	
		
		ReserveDAO dao = ReserveDAO.getInstance();
		List<ReserveDTO> list = dao.getInfo(roomName, checkIn, checkOut);

		request.setAttribute("list", list);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("view/admin/adminPage1.jsp");
		
		return forward;
		
	}

}
