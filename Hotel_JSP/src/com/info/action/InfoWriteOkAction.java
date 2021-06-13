package com.info.action;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.InfoDAO;
import com.hotel.model.InfoDTO;

public class InfoWriteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		InfoDTO dto = new InfoDTO();
		
		String info_id = request.getParameter("info_id").trim();
		String info_title = request.getParameter("info_title").trim();
		String info_content = request.getParameter("info_content").trim();
		
		dto.setAdminId(info_id);
		dto.setInfoTitle(info_title);
		dto.setInfoContent(info_content);

		InfoDAO dao = InfoDAO.getInstance();

		int res = dao.writeInfo(dto);

		PrintWriter out = response.getWriter();
		ActionForward forward = new ActionForward();

		if (res > 0) {
			forward.setRedirect(true);
			forward.setPath("info_list.do");		// 세션정보 넘기기 필요
		} else {
			out.println("<script>");
			out.println("alert('공지사항 업로드 실패')");
			out.println("history.back()");
			out.println("</script>");
		}

		return forward;
	}

}
