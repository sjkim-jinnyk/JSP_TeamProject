package com.resve.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.ReserveDAO;
import com.hotel.model.ReserveDTO;

public class ResStep4Action implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// res_step0~3.jsp 에서 저장한 세션 값 받기
		HttpSession session = request.getSession();
		
		String user_id =  (String)session.getAttribute("userId");
		String room_name = (String) session.getAttribute("roomName");
		int room_number = ((Integer)(session.getAttribute("roomNumber"))).intValue();
		String res_in = (String) session.getAttribute("resIn");
		String res_out = (String) session.getAttribute("resOut");
		int res_nod = ((Integer)(session.getAttribute("resNight"))).intValue();
		int res_adult = ((Integer)(session.getAttribute("resAdult"))).intValue();
		int res_child = ((Integer)(session.getAttribute("resChild"))).intValue();
		int res_adult_br = ((Integer)(session.getAttribute("resAdultBr"))).intValue();
		int res_child_br = ((Integer)(session.getAttribute("resChildBr"))).intValue();
		int res_bed = ((Integer)(session.getAttribute("resBed"))).intValue();
		int res_total = ((Integer)(session.getAttribute("resTotal"))).intValue();
		String res_request = (String)session.getAttribute("resRequest");

		
		// DTO 객체의 setter() 메서드에 넘어온 데이터들을 인자로 넘겨주자.
		ReserveDTO dto = new ReserveDTO();
		dto.setUserId(user_id);
		dto.setRoomName(room_name);
		dto.setRoomNumber(room_number);
		dto.setResIn(res_in);
		dto.setResOut(res_out);
		dto.setResNod(res_nod);
		dto.setResAdult(res_adult);
		dto.setResChild(res_child);
		dto.setResAdultBr(res_adult_br);
		dto.setResChildBr(res_child_br);
		dto.setResBed(res_bed);
		dto.setResTotal(res_total);
		dto.setResRequest(res_request);
		
		// DAO 객체에 DTO 객체를 인자로 넘겨서 DB에 예약내용을 저장하자.
		ReserveDAO dao = ReserveDAO.getInstance();
		int res = dao.resInsert(dto);
		
		ActionForward forward = new ActionForward();
		PrintWriter out = response.getWriter();
		
		if(res > 0) {
			forward.setRedirect(false);
			forward.setPath("/view/resve/res_step4.jsp");
		}else {
			out.println("<script>");
			out.println("alert('예약 실패')");
			out.println("hidtory.back()");
			out.println("</script>");
		}
		
		return forward;
	}

}
