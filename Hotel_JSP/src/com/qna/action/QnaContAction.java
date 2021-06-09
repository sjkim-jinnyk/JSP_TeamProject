package com.qna.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.QnaDAO;
import com.hotel.model.QnaDTO;

public class QnaContAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		int qna_no = Integer.parseInt(request.getParameter("no").trim());

		QnaDAO dao = QnaDAO.getInstance();

		// 조회수 증가 메서드 호출
		dao.qnaHit(qna_no);

		// 글번호에 해당하는 상세 내역을 조회하는 메서드 호출
		QnaDTO dto = dao.getQnaCont(qna_no);

		// 키로 저장하여 view page로 이동
		request.setAttribute("cont", dto);

		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("view/board/qna_cont.jsp");

		return forward;
	}

}
