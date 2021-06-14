package com.mypage.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.UserDAO;

public class PwdUpdateOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 세션값으로 저장되어있는 id 받기
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		
		// pwd_update.jsp에서 넘어온 비밀번호 받아주기
		String DbPwd = request.getParameter("DbPwd").trim();
		String NewPwd1 = request.getParameter("newPwd1").trim();
		String NewPwd2 = request.getParameter("newPwd2").trim();
		
		// 로그인한 id의 비밀번호 변경하는 메서드
		UserDAO dao = UserDAO.getInstance();
		int update = dao.updatePwd(userId, DbPwd, NewPwd2);
		
		ActionForward forward = new ActionForward();
		PrintWriter out = response.getWriter();
		
		if(NewPwd1.equals(NewPwd2)) {
			// '새로운 비밀번호' == '새로운 비밀번호 체크'가 같은 경우
			if(update > 0) {
				// 비밀번호 변경 성공
				forward.setRedirect(false);
				forward.setPath("/view/mypage/pwd_update_ok.jsp");
				
			} else if(update == -1) {
				// 비밀번호 변경 실패(입력된 기존 비밀번호 != 디비 비밀번호)
				out.println("<script>");
				out.println("alert('기존 비밀번호를 확인해주세요.')");
				out.println("history.back()");
				out.println("</script>");
			}
		} else {
			// '새로운 비밀번호' != '새로운 비밀번호 체크'가 다른 경우
			out.println("<script>");
			out.println("alert('새로운 비밀번호를 다시 한 번 확인해주세요.')");
			out.println("history.back()");
			out.println("</script>");
		}
		
		return forward;
	}

}
