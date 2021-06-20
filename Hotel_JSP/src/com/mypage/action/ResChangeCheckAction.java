package com.mypage.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.ReserveDAO;
import com.hotel.model.ReserveDTO;

public class ResChangeCheckAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {

		// res_change_ok.jsp에서 넘어온 값 받기
		int adult = Integer.parseInt(request.getParameter("adult").trim());
		int child = Integer.parseInt(request.getParameter("child").trim());
		int adultBr = Integer.parseInt(request.getParameter("adultBr").trim());
		int childBr = Integer.parseInt(request.getParameter("childBr").trim());
		int extraBed = Integer.parseInt(request.getParameter("extraBed").trim());
		String requests = request.getParameter("requests").trim();
		
		// 히든으로 넘어온 값 받기
		int resNo = Integer.parseInt(request.getParameter("resNo").trim());
		System.out.println("resNo >>> " + request.getParameter("resNo"));
		
		System.out.println("updateTotal >>> " + request.getParameter("updateTotal"));
		int updateTotal = Integer.parseInt(request.getParameter("updateTotal").trim());
		
		
		ReserveDTO dto = new ReserveDTO();
		dto.setResNo(resNo);
		dto.setResAdult(adult);
		dto.setResChild(child);
		dto.setResAdultBr(adultBr);
		dto.setResChildBr(childBr);
		dto.setResBed(extraBed);
		dto.setResRequest(requests);
		dto.setResTotal(updateTotal);
		
		// 예약 정보 변경하는 메서드
		ReserveDAO dao = ReserveDAO.getInstance();
		int check = dao.resUpdate(dto);
		
		PrintWriter out = response.getWriter();
		ActionForward forward = new ActionForward();
		
		if(check > 0) {
			forward.setRedirect(true);
			forward.setPath("res_list.do");
		} else {
			out.println("<script>");
			out.println("alert('예약 변경에 실패하였습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}
		
		return forward;
	}

}
