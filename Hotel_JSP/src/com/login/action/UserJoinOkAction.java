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

public class UserJoinOkAction implements Action {
 
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {

		String userId = request.getParameter("userId").trim();
		String userPwd = request.getParameter("userPwd").trim();
		String userPwd_check = request.getParameter("userPwd_check").trim();
		String userName = request.getParameter("userName").trim();
		String userGen = request.getParameter("userGen").trim();
		String userPhone = request.getParameter("userPhone").trim();
		String userAddr_1 = request.getParameter("userAddr_1").trim();
		String userAddr_2 = request.getParameter("userAddr_2").trim();
		String userAddr_3 = request.getParameter("userAddr_3").trim();
		String userAddr_4 = request.getParameter("userAddr_4").trim();
		String userEmail_1 = request.getParameter("userEmail_1").trim();
		String userEmail_2 = request.getParameter("userEmail_2").trim();
		 
		// 주소 합치기
		String userAddr = userAddr_1 + " " + userAddr_2 + " " + userAddr_3 + " " + userAddr_4;
		
		// 이메일 합치기
		String userEmail = userEmail_1 + "@" + userEmail_2;
		
		// joinForm에서 넘어온 값 콘솔 창에 출력
		System.out.println("아이디 >>> " + userId);
		System.out.println("비밀번호 >>> " + userPwd);
		System.out.println("비밀번호 확인 >>> " + userPwd_check);
		System.out.println("이름 >>> " + userName);
		System.out.println("성별 >>> " + userGen);
		System.out.println("휴대폰 번호 >>> " + userPhone);
		System.out.println("주소 >>> " + userAddr);
		System.out.println("이메일 >>> " + userEmail);


		// DTO에 값 저장
		UserDTO dto = new UserDTO();
		dto.setUserId(userId);
		dto.setUserPwd(userPwd);
		dto.setUserName(userName);
		dto.setUserGen(userGen);
		dto.setUserPhone(userPhone);
		dto.setUserAddr(userAddr);
		dto.setUserEmail(userEmail);
		
		
		ActionForward forward = new ActionForward();
		PrintWriter out = response.getWriter();


		
		if(userPwd_check.equals(dto.getUserPwd())) {
			
			// 비밀번호 같은 경우
			UserDAO dao = UserDAO.getInstance();
			int join = dao.userJoin(dto);
			
			if(join > 0) {
				// 회원가입 성공한 경우
				forward.setRedirect(false);
				forward.setPath("index.jsp");	// ★ 유저 메인 페이지(user_main.jsp)를 따로 만들어야 하는지?
			} else {
				// 회원가입 실패한 경우
				out.println("<script>");
				out.println("alert('회원가입에 실패하였습니다.')");
				out.println("history.back()");
				out.println("</script>");
			}
			
		} else {
			// 비밀번호가 틀린 경우
			out.println("<script>");
			out.println("alert('비밀번호를 다시 한 번 체크해주세요. ')");
			out.println("history.back()");
			out.println("</script>");
		}
		

		return forward;
		
	}

}
