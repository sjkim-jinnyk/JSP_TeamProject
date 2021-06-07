package com.login.action;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.UserDAO;
import com.hotel.model.UserDTO;

public class UserLoginOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		String userId = request.getParameter("userId").trim();
		String userPwd = request.getParameter("userPwd").trim();
		
		// loginForm에서 넘어온 값 콘솔 창에 출력
		System.out.println("아이디 >>> " + userId);
		System.out.println("비밀번호 >>> " + userPwd);

		UserDAO dao = UserDAO.getInstance();
		int check = dao.userCheck(userId, userPwd);
		
		ActionForward forward = new ActionForward();
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		if(check > 0) {	  
			// 회원인 경우
			UserDTO dto = dao.getUser(userId);
			
			session.setAttribute("userId", dto.getUserId());
			session.setAttribute("userName", dto.getUserPwd());
			
			forward.setRedirect(false);
			forward.setPath("index.jsp");	// ★ 유저 메인 페이지(user_main.jsp)를 따로 만들어야 하는지?
		} else if(check == -1) {
			// 비밀번호가 틀린 경우
			out.println("<script>");
			out.println("alert('비밀번호가 틀립니다. 다시 확인해주세요.')");
			out.println("history.back()");
			out.println("</script>");
		} else if(check == -2) {
			// 회원이 아닌 경우
			out.println("<script>");
			out.println("alert('회원이 아닙니다. 가입해주세요.')");
			out.println("history.back()");
			out.println("</script>");
		}
		
		return forward;
	}

}
