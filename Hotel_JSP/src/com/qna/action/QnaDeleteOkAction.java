package com.qna.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.QnaDAO;

public class QnaDeleteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {

		int qna_no = Integer.parseInt(request.getParameter("no").trim());
		String writerId = request.getParameter("id").trim();
		
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		System.out.println("qna_del 세션 >>> " + (String)session.getAttribute("userId"));	// 세션 정보 확인
		
		// 관리자 세션정보 추가 필요
		
		PrintWriter out = response.getWriter();
		ActionForward forward = new ActionForward();

		if (userId.equals(writerId)) {
			QnaDAO dao = QnaDAO.getInstance();
			
			int res = dao.deleteQna(qna_no);
			
			if (res > 0) {
				forward.setRedirect(true);
				forward.setPath("qna_list.do");
			} else {
				out.println("<script>");
				out.println("alert('QnA 삭제 실패')");
				out.println("history.back()");
				out.println("</script>");
			}
			
		} else {
			out.println("<script>");
			out.println("alert('작성자만이 삭제할 수 있습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}

		return forward;
	}

}
