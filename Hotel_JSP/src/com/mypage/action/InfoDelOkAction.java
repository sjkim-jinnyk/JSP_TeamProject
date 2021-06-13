package com.mypage.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.UserDAO;
import com.hotel.model.UserDTO;

public class InfoDelOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 세션값으로 저장되어있는 id 받기
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		
		// info_del.jsp에서 넘어온 비밀번호 받기
		String delPwd = request.getParameter("delPwd").trim();
		System.out.println("비밀번호 >>> " + delPwd);
		
		// 로그인된 유저 탈퇴하는 메서드
		UserDAO dao = UserDAO.getInstance();
		int check = dao.userDel(userId, delPwd);
		
		PrintWriter out = response.getWriter();
		ActionForward forward = new ActionForward();
		
		if(check > 0) {
			// 회원탈퇴 성공
			forward.setRedirect(false);
			forward.setPath("/view/mypage/info_del.jsp");
		}else if(check == -1) {
			out.println("<script>");
			out.println("alert('비밀번호가 틀렸습니다. 다시 입력해주세요.')");
			out.println("history.back()");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('회원 탈퇴에 실패하였습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}
	

		return forward;
	}

}
