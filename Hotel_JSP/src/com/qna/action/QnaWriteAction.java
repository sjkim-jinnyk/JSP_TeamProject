package com.qna.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;

public class QnaWriteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String userId = null;
		userId = "id1";	// 임시 아이디 설정, 세션정보 받아오기 필요
		
		PrintWriter out = response.getWriter();
		ActionForward forward = new ActionForward();

		if (userId != null) {
			request.setAttribute("id", userId);
			
			forward.setRedirect(false);
			forward.setPath("view/board/qna_write.jsp");		// 세션정보 넘기기 필요
		} else {
			out.println("<script>");
			out.println("alert('로그인이 필요한 기능입니다.')");
			out.println("history.back()");
			out.println("</script>");
		}

		return forward;
	}

}
