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
		String search_room = "";
		String room_image = "";
		String room_content = "";
		double room_size = 0;
		int room_price = 0;
		
		ReserveDAO dao = ReserveDAO.getInstance();
		List<ReserveDTO> list = dao.getInfo(roomName, checkIn, checkOut);

		// request.setAttribute("list", list);
		
		for(int i=0; i<list.size(); i++) {
			search_room = list.get(i).getRoomName();
		}
		
		RoomDAO listdao = RoomDAO.getInstance();
		String room_detail = listdao.getRoomDetail(search_room);
		
		for(int i=0; i<room_detail.size(); i++) {
			room_image = room_detail.get(i).getRoomImage();
			room_size = room_detail.get(i).getRoomSize();
			room_price = room_detail.get(i).getRoomPrice();
		}
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("view/admin/adminPage1.jsp");
		
		return forward;
		
	}

}
