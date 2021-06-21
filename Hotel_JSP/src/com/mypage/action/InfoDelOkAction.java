package com.mypage.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.ReserveDAO;
import com.hotel.model.UserDAO;

public class InfoDelOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 세션값으로 저장되어있는 id 받기
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		
		// info_del.jsp에서 넘어온 비밀번호 받기
		String delPwd = request.getParameter("delPwd").trim();
		System.out.println("삭제 비밀번호 >>> " + delPwd);
		
		
		// 로그인된 유저 탈퇴하는 메서드
		UserDAO daoUser = UserDAO.getInstance();
		int checkUser = daoUser.userDel(userId, delPwd);
		int checkRes = 0;
		
		
		if(checkUser > 0) {
			System.out.println("실행확인");
			ReserveDAO daoRes = ReserveDAO.getInstance();
			checkRes = daoRes.userResDel(userId);
		}
		
		PrintWriter out = response.getWriter();
		ActionForward forward = new ActionForward();
		
		
		if(checkUser > 0 && checkRes > 0) {
				session.invalidate();	// 세션 값 만료
				
				forward.setRedirect(false);
				forward.setPath("/view/mypage/info_del_ok.jsp");		
		}else if(checkUser == -1) {
			// 비밀번호가 틀린 경우
			out.println("<script>");
			out.println("alert('비밀번호가 틀렸습니다. 다시 입력해주세요.')");
			out.println("history.back()");
			out.println("</script>");
		}else {
			// 회원탈퇴 실패
			out.println("<script>");
			out.println("alert('회원 탈퇴에 실패하였습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}
		return forward;
	}

}
