package com.qna.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.QnaDAO;

public class QnaDeleteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {

		int qna_no = Integer.parseInt(request.getParameter("no").trim());
		String writerId = request.getParameter("id").trim();
		
		String userId = null;
		userId = "id1";	// 임시 아이디 설정, 세션정보 받아오기 필요
		
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
