package com.qna.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.AdminDAO;
import com.hotel.model.AdminDTO;
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
				
		// 답글이 아닌 질문글인 경우
		if (dto.getQnaStep() == 0) {
			// 해당 글의 답변 상세 내역을 조회하는 메서드 호출
			List<QnaDTO> list = dao.getQnaReplyCont(qna_no);
			request.setAttribute("reply", list);

		}
		
		QnaDTO up = dao.getQnaUp(qna_no);
		QnaDTO down = dao.getQnaDown(qna_no);
		System.out.println("up_no >>> " + up.getQnaNo());
		System.out.println("down_no >>> " + down.getQnaNo());
		
		// 관리자 정보 가져오기
		AdminDAO admindao = AdminDAO.getInstance();
		List<AdminDTO> adminlist = admindao.adminInfo();
		
		// 키로 저장하여 view page로 이동
		request.setAttribute("cont", dto);
		request.setAttribute("up", up);
		request.setAttribute("down", down);
		request.setAttribute("admin", adminlist);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("view/board/qna_cont.jsp");

		return forward;
	}

}
