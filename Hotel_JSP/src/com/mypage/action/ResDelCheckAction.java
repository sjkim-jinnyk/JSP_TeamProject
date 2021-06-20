package com.mypage.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.ReserveDAO;
 
public class ResDelCheckAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// res_change_ok.jsp에서 넘어온 히든 값 받기
		int resNo = Integer.parseInt(request.getParameter("resNo").trim());
		System.out.println("resNo >>> " + request.getParameter("resNo"));
		
		ReserveDAO dao = ReserveDAO.getInstance();
		int check = dao.resDel(resNo);
		
		PrintWriter out = response.getWriter();
		ActionForward forward = new ActionForward();
		
		if(check > 0) {
			forward.setRedirect(true);
			forward.setPath("res_list.do");
		} else {
			out.println("<script>");
			out.println("alert('예약 삭제에 실패하였습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}
		
		return forward;
	}

}
