package com.info.action;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.InfoDAO;
import com.hotel.model.InfoDTO;

public class InfoUpdateOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		InfoDTO dto = new InfoDTO();
		
		int info_no = Integer.parseInt(request.getParameter("info_no"));
		String admin_id = request.getParameter("info_id").trim();
		String info_title = request.getParameter("info_title").trim();
		String info_content = request.getParameter("info_content").trim();

		dto.setInfoNo(info_no);
		dto.setAdminId(admin_id);
		dto.setInfoTitle(info_title);
		dto.setInfoContent(info_content);

		InfoDAO dao = InfoDAO.getInstance();

		int res = dao.updateInfo(dto);

		PrintWriter out = response.getWriter();
		ActionForward forward = new ActionForward();

		if (res > 0) {
			forward.setRedirect(true);
			forward.setPath("info_cont.do?no=" + info_no);
		} else {
			out.println("<script>");
			out.println("alert('공지사항 수정 실패')");
			out.println("history.back()");
			out.println("</script>");
		}

		return forward;
	}

}
