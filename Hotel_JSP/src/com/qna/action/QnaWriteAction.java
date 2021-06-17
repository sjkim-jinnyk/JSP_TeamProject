package com.qna.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;

public class QnaWriteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		System.out.println("qna_write 세션 >>> " + (String)session.getAttribute("userId"));	// 세션 정보 확인
		
		PrintWriter out = response.getWriter();
		ActionForward forward = new ActionForward();

		if (userId != null) {
			forward.setRedirect(false);
			forward.setPath("view/board/qna_write.jsp");
		} else {
			out.println("<script>");
			out.println("alert('로그인이 필요한 기능입니다.')");
			out.println("history.back()");
			out.println("</script>");
		}

		return forward;
	}

}
