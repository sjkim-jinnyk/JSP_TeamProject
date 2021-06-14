package com.qna.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.QnaDAO;
import com.hotel.model.QnaDTO;

public class QnaUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String writerId = request.getParameter("id").trim();
		
		String userId = null;
		userId = "id1";	// 임시 아이디 설정, 세션정보 받아오기 필요

		PrintWriter out = response.getWriter();
		ActionForward forward = new ActionForward();

		if (userId.equals(writerId)) {
			QnaDAO dao = QnaDAO.getInstance();
			
			int qna_no = Integer.parseInt(request.getParameter("no").trim());
			// 글번호에 해당하는 상세 내역을 조회하는 메서드 호출
			QnaDTO dto = dao.getQnaCont(qna_no);

			// 키로 저장하여 view page로 이동
			request.setAttribute("cont", dto);
			
			forward.setRedirect(false);
			forward.setPath("view/board/qna_update.jsp");
		} else {
			out.println("<script>");
			out.println("alert('작성자만이 수정할 수 있습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}

		return forward;
	}

}
