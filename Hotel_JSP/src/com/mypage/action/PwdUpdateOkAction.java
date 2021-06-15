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

public class PwdUpdateOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 세션값으로 저장되어있는 id 받기
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		
		// pwd_update.jsp에서 넘어온 비밀번호 받아주기
		String originalPwd = request.getParameter("originalPwd").trim();	// 기존 비밀번호
		String NewPwd = request.getParameter("newPwd").trim();				// 새로운 비밀번호
		String NewPwd_check = request.getParameter("newPwd_check").trim();	// 새로운 비밀번호 확인
		
		UserDTO dto = new UserDTO();
		dto.setUserPwd(NewPwd);
		
		ActionForward forward = new ActionForward();
		PrintWriter out = response.getWriter();
		
		if(NewPwd_check.equals(dto.getUserPwd())) {
			// '새로운 비밀번호 확인' == '새로운 비밀번호'가 같은 경우
			// 로그인한 id의 비밀번호 변경하는 메서드
			UserDAO dao = UserDAO.getInstance();
			int update = dao.updatePwd(userId, originalPwd, NewPwd);
			
			if(update > 0) {
				// 비밀번호 변경 성공
				forward.setRedirect(true);
				forward.setPath("pwd_update.do");
				
			} else if(update == -1) {
				// 비밀번호 변경 실패(입력된 기존 비밀번호 != 디비 비밀번호)
				out.println("<script>");
				out.println("alert('기존 비밀번호를 확인해주세요.')");
				out.println("history.back()");
				out.println("</script>");
			}
		} else {
			// '새로운 비밀번호 확인' != '새로운 비밀번호'가 다른 경우
			out.println("<script>");
			out.println("alert('새로운 비밀번호를 다시 한 번 확인해주세요.')");
			out.println("history.back()");
			out.println("</script>");
		}
		
		return forward;
	}

}
