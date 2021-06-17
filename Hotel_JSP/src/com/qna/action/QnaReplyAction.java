package com.qna.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.QnaDAO;
import com.hotel.model.QnaDTO;

public class QnaReplyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		HttpSession session = request.getSession();
		String adminId = (String)session.getAttribute("adminId");
		System.out.println("qna_reply 세션 >>> " + (String)session.getAttribute("adminId"));	// 세션 정보 확인
		
		QnaDAO dao = QnaDAO.getInstance();
		// 관리자 계정 체크 메서드
		int check = dao.AdminIdCheck(adminId);
		
		PrintWriter out = response.getWriter();
		ActionForward forward = new ActionForward();

		if (check == 1) {
			int qna_no = Integer.parseInt(request.getParameter("no").trim());

			// 글번호에 해당하는 상세 내역을 조회하는 메서드 호출
			QnaDTO dto = dao.getQnaCont(qna_no);

			// 키로 저장하여 view page로 이동
			request.setAttribute("cont", dto);
			
			forward.setRedirect(false);
			forward.setPath("view/board/qna_reply.jsp");
		} else {
			out.println("<script>");
			out.println("alert('관리자만 답글을 달 수 있습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}

		return forward;
	}

}
