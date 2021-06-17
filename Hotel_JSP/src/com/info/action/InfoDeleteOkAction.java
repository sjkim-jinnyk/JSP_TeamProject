package com.info.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.InfoDAO;

public class InfoDeleteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {

		int info_no = Integer.parseInt(request.getParameter("no").trim());
		
		HttpSession session = request.getSession();
		String adminId = (String)session.getAttribute("adminId");
		System.out.println("info_write 세션 >>> " + (String)session.getAttribute("adminId"));	// 세션 정보 확인
		
		InfoDAO dao = InfoDAO.getInstance();
		// 관리자 계정 체크 메서드
		int check = dao.AdminIdCheck(adminId);
		
		PrintWriter out = response.getWriter();
		ActionForward forward = new ActionForward();

		if (check == 1) {
			int res = dao.deleteInfo(info_no);
			
			if (res > 0) {
				forward.setRedirect(true);
				forward.setPath("info_list.do");
			} else {
				out.println("<script>");
				out.println("alert('공지사항 삭제 실패')");
				out.println("history.back()");
				out.println("</script>");
			}
			
		} else {
			out.println("<script>");
			out.println("alert('관리자만이 삭제할 수 있습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}

		return forward;
	}

}
