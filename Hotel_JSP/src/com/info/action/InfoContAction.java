package com.info.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.AdminDAO;
import com.hotel.model.AdminDTO;
import com.hotel.model.InfoDAO;
import com.hotel.model.InfoDTO;

public class InfoContAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		int info_no = Integer.parseInt(request.getParameter("no").trim());

		InfoDAO dao = InfoDAO.getInstance();

		// 조회수 증가 메서드 호출
		dao.infoHit(info_no);

		// 글번호에 해당하는 상세 내역을 조회하는 메서드 호출
		InfoDTO dto = dao.getInfoCont(info_no);
		
		InfoDTO up = dao.getInfoUp(info_no);
		InfoDTO down = dao.getInfoDown(info_no);
		System.out.println("up_no >>> " + up.getInfoNo());
		System.out.println("down_no >>> " + down.getInfoNo());

		// 관리자 정보 가져오기
		AdminDAO admindao = AdminDAO.getInstance();
		List<AdminDTO> adminlist = admindao.adminInfo();
				
		// 키로 저장하여 view page로 이동
		request.setAttribute("cont", dto);
		request.setAttribute("up", up);
		request.setAttribute("down", down);
		request.setAttribute("admin", adminlist);

		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("view/board/info_cont.jsp");

		return forward;
	}

}
