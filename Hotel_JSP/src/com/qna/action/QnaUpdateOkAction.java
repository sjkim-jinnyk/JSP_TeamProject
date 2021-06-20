package com.qna.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.controller.Action;
import com.hotel.controller.ActionForward;
import com.hotel.model.QnaDAO;
import com.hotel.model.QnaDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class QnaUpdateOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		QnaDTO dto = new QnaDTO();
		
		String path = null;

		try {
			path = URLDecoder.decode(QnaWriteOkAction.class.getResource("").getPath(), "UTF-8");
		} catch (UnsupportedEncodingException e1) {
			System.out.println("경로설정 오류");
		}
	    
	    System.out.println("절대경로 : " + path);
		String saveFolder = path + "../../../../../file/qna";
		System.out.println("저장폴더 : " + saveFolder);
		
		int fileSize = 20 * 1024 * 1024; // 20MB

		// 파일 업로드를 진행 시 이진 파일 업로드를 위한 객체 생성
		MultipartRequest multi = new MultipartRequest(request, // 일반적인 request 객체
				saveFolder, // 업로드 파일 저장 위치
				fileSize, // 업로드할 파일의 최대 크기
				"UTF-8", // 문자 인코딩 방식
				new DefaultFileRenamePolicy() // 파일 이름이 중복이 안되게 설정
		);
		
		// 자료실 폼에서 넘어온 데이터들을 받아주어야 한다.
		int qna_no = Integer.parseInt(multi.getParameter("qna_no"));
		int qna_group = Integer.parseInt(multi.getParameter("qna_group"));
		String qna_title = multi.getParameter("qna_title").trim();
		String qna_content = multi.getParameter("qna_content").trim();

		// getFilesystemName() : 서버상에 실제로 업로드될 파일 이름을 문자열로 반환
		String qna_file = multi.getFilesystemName("qna_file");

		if (multi.getFilesystemName("qna_file") == null) {		// 수정시 따로 파일을 첨부 하지 않은 경우 이전 파일명 그대로 유지
			qna_file = multi.getParameter("qna_file_old");
		}
		
		dto.setQnaNo(qna_no);
		dto.setQnaTitle(qna_title);
		dto.setQnaContent(qna_content);
		dto.setQnaFile(qna_file);

		QnaDAO dao = QnaDAO.getInstance();

		int res = dao.updateQna(dto);

		PrintWriter out = response.getWriter();
		ActionForward forward = new ActionForward();

		if (res > 0) {
			forward.setRedirect(true);
			forward.setPath("qna_cont.do?no=" + qna_group);
		} else {
			out.println("<script>");
			out.println("alert('QnA 수정 실패')");
			out.println("history.back()");
			out.println("</script>");
		}

		return forward;
	}

}
