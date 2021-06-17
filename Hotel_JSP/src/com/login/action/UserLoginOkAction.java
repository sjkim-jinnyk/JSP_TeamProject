package com.login.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.AdminDAO;
import com.hotel.model.AdminDTO;
import com.hotel.model.UserDAO;
import com.hotel.model.UserDTO;

public class UserLoginOkAction implements Action {
 
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {

		String userId = request.getParameter("userId").trim();
		String userPwd = request.getParameter("userPwd").trim();
		int login_save = Integer.parseInt(request.getParameter("id_save_int").trim());
		
		// loginForm에서 넘어온 값 콘솔 창에 출력
		System.out.println("아이디 >>> " + userId);
		System.out.println("비밀번호 >>> " + userPwd);
		
		ActionForward forward = new ActionForward();
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		/*
		 * 1.관리자 계정 확인하는 로직
		 */
		 
		AdminDAO dao2 = AdminDAO.getInstance();
		int adminLogin = dao2.adminLogin(userId, userPwd);
		
		

		
		if(adminLogin > 0) {
			// 관리자인 경우 관리자 정보 가져오기
			AdminDTO dto2 =  dao2.getAdmin(userId);
			
			// 세션 값 저장
			session.setAttribute("adminId", dto2.getAdminId());
			
			// 세션값 저장되었는지 콘솔창에서 확인
			System.out.println("UserLoginOkAction에서 adminId >>>" + (String)session.getAttribute("adminId"));

			forward.setRedirect(true);
			forward.setPath("admin_login_ok.do");
			
		} else {
			
			/*
			 * 2.회원 계정 확인하는 로직
			 */
			
			UserDAO dao = UserDAO.getInstance();
			int check = dao.userCheck(userId, userPwd);
		
			if(check > 0) {
				// 회원인 경우 회원 정보 가져오기
				UserDTO dto = dao.getUser(userId);
				
				if(login_save == 1) {
		               session.setAttribute("user_save", dto.getUserId());
		               System.out.println("값 저장 완료");
		            }
				
				// 세션 값 저장
				session.setAttribute("userId", dto.getUserId());
				session.setAttribute("userName", dto.getUserName());
				session.setAttribute("userPoint", dto.getUserPoint());
				
				// 세션값 저장되었는지 콘솔창에서 확인
				System.out.println("UserLoginOkAction에서 userId 세션값 >>>" + (String)session.getAttribute("userId"));
			
				forward.setRedirect(true);
				forward.setPath("index.do");	
			
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
		}
		
		
		return forward;
	}
}
