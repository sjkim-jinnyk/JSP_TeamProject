package com.info.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.InfoDAO;

public class InfoWriteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		HttpSession session = request.getSession();
		String adminId = (String)session.getAttribute("adminId");
		System.out.println("info_write 세션 >>> " + (String)session.getAttribute("adminId"));	// 세션 정보 확인
		
		InfoDAO dao = InfoDAO.getInstance();
		// 관리자 계정 체크 메서드
		int check = dao.AdminIdCheck(adminId);
		
		PrintWriter out = response.getWriter();
		ActionForward forward = new ActionForward();

		if (check == 1) {
			forward.setRedirect(false);
			forward.setPath("view/board/info_write.jsp");
		} else {
			out.println("<script>");
			out.println("alert('관리자만 작성할 수 있습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}

		return forward;
	}

}
