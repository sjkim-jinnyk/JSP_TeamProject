package com.info.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.InfoDAO;
import com.hotel.model.InfoDTO;

public class InfoUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String adminId = null;
		adminId = "ADMIN";	// 임시 아이디 설정, 세션정보 받아오기 필요
		
		InfoDAO dao = InfoDAO.getInstance();
		// 관리자 계정 체크 메서드
		int check = dao.AdminIdCheck(adminId);

		PrintWriter out = response.getWriter();
		ActionForward forward = new ActionForward();

		if (check == 1) {
			int info_no = Integer.parseInt(request.getParameter("no").trim());
			// 글번호에 해당하는 상세 내역을 조회하는 메서드 호출
			InfoDTO dto = dao.getInfoCont(info_no);

			// 키로 저장하여 view page로 이동
			request.setAttribute("cont", dto);
			request.setAttribute("id", adminId);
			
			forward.setRedirect(false);
			forward.setPath("view/board/info_update.jsp");	// 세션정보 넘기기 필요
		} else {
			out.println("<script>");
			out.println("alert('관리자만이 수정할 수 있습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}

		return forward;
	}

}
