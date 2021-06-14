package com.mypage.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.ReserveDAO;
import com.hotel.model.ReserveDTO;
import com.hotel.model.RoomDAO;
import com.hotel.model.RoomDTO;

public class ResChangeOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// res_change.jsp에서 예약번호 가져오기
		int resNo = Integer.parseInt(request.getParameter("no").trim());
		System.out.println("resNo >>> " + resNo);
		
		// res_change.jsp에서 예약된 객실호수 가져오기
		int roomNo = Integer.parseInt(request.getParameter("roomNo").trim());
		System.out.println("roomNo >>> " + roomNo);
		
		// 예약번호에 해당하는 예약 상세내역 가져오는 메서드
		ReserveDAO dao = ReserveDAO.getInstance();
		ReserveDTO resCont =  dao.resCont(resNo);
		
		// 객실호수에 해당하는 객실 정보 가져오기
		RoomDAO dao2 = RoomDAO.getInstance();
		RoomDTO roomCont = dao2.roomCont(roomNo);

		request.setAttribute("resCont", resCont);
		request.setAttribute("roomCont", roomCont);
		
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(false);
		forward.setPath("/view/mypage/res_change_ok.jsp");
		
		return forward;
	}

}
