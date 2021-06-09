package com.login.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.UserDAO;
import com.hotel.model.UserDTO;

public class UserIdSearchOkAction implements Action {
 
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		  String userName = request.getParameter("userName").trim();
	      String userPhone = request.getParameter("userPhone").trim();
	      
	      // id_search.jsp 에서 넘어온 값 체크
	      System.out.println("이름 >>> " + userName);
	      System.out.println("핸드폰 번호 >>> " + userPhone);
	      
	      UserDAO dao = UserDAO.getInstance();
	      String idInfo =  dao.idSearch(userName, userPhone);
	      
	      request.setAttribute("idInfo", idInfo);		// 찾은 아이디 정보
	      request.setAttribute("userName", userName);	// 유저 이름
	      
	      ActionForward forward = new ActionForward();
	      
	      forward.setRedirect(false);
	      forward.setPath("/view/login/id_search_ok.jsp");   
	      
	      return forward;

		
	
	}

}
