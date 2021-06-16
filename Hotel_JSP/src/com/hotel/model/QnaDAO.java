package com.hotel.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
 
public class QnaDAO {

	Connection con = null;			// DB 연결하는 객체.
	PreparedStatement pstmt = null;	// DB에 SQL문을 전송하는 객체.
	ResultSet rs = null;			// SQL문을 실행 후 결과 값을 가지고 있는 객체.

	String sql = null;				// 쿼리문을 저장할 객체.

	// 싱글톤 방식으로 객체를 만들기 위해서는 우선적으로 기본생성자의 접근제어자를 private static으로 선언
	private static QnaDAO instance = null;

	// 외부에서 객체 생성을 하지 못하게 private으로 접근을 제어
	private QnaDAO() {}

	// 기본 생성자 대신에 싱긑턴 객체를 return을 해 주는 getInstance() 메서드를 만들어서 여기에 접근하게 하는 방법
	public static QnaDAO getInstance() {
		if (instance == null) {
			instance = new QnaDAO();
		}
		return instance;
	}

	// DB 연동하는 작업을 진행하는 메서드 - DBCP방식으로 연결 진행
	public void openConn() {

		try {
			// JNDI 서버 객체 생성.
			Context ctx = new InitialContext();

			// lookup() 메서드를 이용하여 매칭되는 커넥션을 찾는다.
			DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/ec2");

			// DataSource 객체를 이용하여 커넥션 객체를 하나 가져온다.
			con = ds.getConnection();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// DB에 연결된 객체를 종료하는 메서드
	public void closeConn(ResultSet rs, PreparedStatement pstmt, Connection con) {

		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	// QnA 테이블의 전체 게시물의 수를 조회하는 메서드
	public int getListCount() {
		
		int count = 0;

		try {
			openConn();

			sql = "select count(*) from qna";

			pstmt = con.prepareStatement(sql);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				count = rs.getInt(1);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}

		return count;
	}

	// QnA 테이블의 페이지에 보여질 게시물의 수만큼 게시물을 조회하는 메서드
	public List<QnaDTO> getQnaList(int page, int rowsize) {
		
		List<QnaDTO> list = new ArrayList<QnaDTO>();

		// 해당 페이지에서의 시작 번호
		int startNo = (page * rowsize) - (rowsize - 1);

		// 해당 페이지에서의 마지막 번호
		int endNo = (page * rowsize);

		try {
			openConn();

			sql = "select * from (select row_number() over(order by qna_group desc, qna_step) rnum, q.* from qna q) "
					+ "where rnum >= ? and rnum <= ?";

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, startNo);
			pstmt.setInt(2, endNo);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				QnaDTO dto = new QnaDTO();
				dto.setQnaNo(rs.getInt("qna_no"));
				dto.setUserId(rs.getString("user_id"));
				dto.setQnaTitle(rs.getString("qna_title"));
				dto.setQnaContent(rs.getString("qna_content"));
				dto.setQnaGroup(rs.getInt("qna_group"));
				dto.setQnaStep(rs.getInt("qna_step"));
				dto.setQnaDate(rs.getString("qna_date"));
				dto.setQnaHit(rs.getInt("qna_hit"));
				dto.setQnaFile(rs.getString("qna_file"));

				list.add(dto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}

		return list;
	}
	
	// QnA 테이블의 게시물 조회수를 증가시키는 메서드
	public void qnaHit(int no) {

		try {
			openConn();

			sql = "update qna set qna_hit = qna_hit + 1 where qna_no = ?";

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);

			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}

	}
	
	// QnA 테이블의 게시물 번호에 해당하는 상세내역을 조회하는 메서드
	public QnaDTO getQnaCont(int qna_no) {
		
		QnaDTO dto = new QnaDTO();

		try {
			openConn();

			sql = "select * from qna where qna_no = ?";

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, qna_no);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				dto.setQnaNo(rs.getInt("qna_no"));
				dto.setUserId(rs.getString("user_id"));
				dto.setQnaTitle(rs.getString("qna_title"));
				dto.setQnaContent(rs.getString("qna_content"));
				dto.setQnaGroup(rs.getInt("qna_group"));
				dto.setQnaStep(rs.getInt("qna_step"));
				dto.setQnaDate(rs.getString("qna_date"));
				dto.setQnaHit(rs.getInt("qna_hit"));
				dto.setQnaFile(rs.getString("qna_file"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}

		return dto;
	}

	// QnA 테이블의 게시물을 작성하는 메서드
	public int writeQna(QnaDTO dto) {
		
		int result = 0, count = 0;
		
		try {
			openConn();
			
			sql = "select max(qna_no) from qna";
			
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				count = rs.getInt(1) + 1;
			}
			
			sql = "insert into qna values(?, ?, ?, ?, ?, 0, sysdate, 0, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, count);
			pstmt.setString(2, dto.getUserId());
			pstmt.setString(3, dto.getQnaTitle());
			pstmt.setString(4, dto.getQnaContent());
			pstmt.setInt(5, count);
			pstmt.setString(6, dto.getQnaFile());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
		
		return result;
	}

	// QnA 테이블의 게시물을 수정하는 메서드
	public int updateQna(QnaDTO dto) {
		
		int result = 0;

		try {
			openConn();

			sql = "select * from qna where qna_no = ?";

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, dto.getQnaNo());

			rs = pstmt.executeQuery();

			if (rs.next()) {
				sql = "update qna set qna_title = ?, qna_content = ?, qna_file = ? where qna_no = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, dto.getQnaTitle());
				pstmt.setString(2, dto.getQnaContent());
				pstmt.setString(3, dto.getQnaFile());
				pstmt.setInt(4, dto.getQnaNo());

				result = pstmt.executeUpdate();

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn(null, pstmt, con);
		}
		
		return result;
	}

	// QnA 테이블의 게시물을 삭제하는 메서드
	public int deleteQna(int qna_no) {
		int result = 0;

		try {
			openConn();
			
			sql = "delete from qna where qna_no = ?";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, qna_no);

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}

		return result;
	}

	// QnA 테이블의 답변 게시물을 작성하는 메서드
	public int replyQna(QnaDTO dto) {

		int result = 0, count = 0;
		
		try {
			openConn();
			
			sql = "select max(qna_no) from qna";
			
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				count = rs.getInt(1) + 1;
			}
			
			sql = "insert into qna values(?, ?, ?, ?, ?, ?, sysdate, 0, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, count);
			pstmt.setString(2, dto.getUserId());
			pstmt.setString(3, dto.getQnaTitle());
			pstmt.setString(4, dto.getQnaContent());
			pstmt.setInt(5, dto.getQnaGroup());
			pstmt.setInt(6, dto.getQnaStep());
			pstmt.setString(7, dto.getQnaFile());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
		
		return result;
	}

	// QnA 테이블의 검색된 전체 게시물의 수를 조회하는 메서드
	public int getSearchListCount(String search_field, String search_content) {

		int count = 0;

		try {
			openConn();
			
			if (search_field.equals("title")) {
				sql = "select count(*) from qna where qna_title like ?";
				
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, "%" + search_content + "%");

			} else if (search_field.equals("content")) {
				sql = "select count(*) from qna where qna_content like ?";
				
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, "%" + search_content + "%");

			} else if (search_field.equals("title_content")) {
				sql = "select count(*) from qna where qna_title like ? or qna_content like ?";
				
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, "%" + search_content + "%");
				pstmt.setString(2, "%" + search_content + "%");

			} else {
				sql = "select count(*) from qna where user_id like ?";
				
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, "%" + search_content + "%");

			}
			
			rs = pstmt.executeQuery();

			if (rs.next()) {
				count = rs.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}

		return count;
	}

	// QnA 테이블의 페이지에 보여질 게시물의 수만큼 검색된 게시물을 조회하는 메서드
	public List<QnaDTO> getSearchQnaList(String search_field, String search_content, int page, int rowsize) {
		List<QnaDTO> list = new ArrayList<QnaDTO>();

		// 해당 페이지에서 시작 번호
		int startNo = (page * rowsize) - (rowsize - 1);

		// 해당 페이지에서 마지막 번호
		int endNo = (page * rowsize);
		
		try {
			openConn();
			
			if (search_field.equals("title")) {
			
				sql = "select * from (select row_number() over(order by qna_group desc, qna_step) rnum, "
						+ "q.* from qna q where q.qna_title like ?) where rnum >= ? and rnum <= ?";
				
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, "%" + search_content + "%");
				pstmt.setInt(2, startNo);
				pstmt.setInt(3, endNo);

			} else if (search_field.equals("content")) {
				
				sql = "select * from (select row_number() over(order by qna_group desc, qna_step) rnum, "
						+ "q.* from qna q where qna_content like ?) where rnum >= ? and rnum <= ?";
				
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, "%" + search_content + "%");
				pstmt.setInt(2, startNo);
				pstmt.setInt(3, endNo);

			} else if (search_field.equals("title_content")) {

				sql = "select * from (select row_number() over(order by qna_group desc, qna_step) rnum, "
						+ "q.* from qna q where qna_title like ? or qna_content like ?) where rnum >= ? and rnum <= ?";
				
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, "%" + search_content + "%");
				pstmt.setString(2, "%" + search_content + "%");
				pstmt.setInt(3, startNo);
				pstmt.setInt(4, endNo);

			} else {
				sql = "select * from (select row_number() over(order by qna_group desc, qna_step) rnum, "
						+ "q.* from qna q where user_id like ?) where rnum >= ? and rnum <= ?";
				
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, "%" + search_content + "%");
				pstmt.setInt(2, startNo);
				pstmt.setInt(3, endNo);

			}
			
			rs = pstmt.executeQuery();

			while (rs.next()) {
				QnaDTO dto = new QnaDTO();
				dto.setQnaNo(rs.getInt("qna_no"));
				dto.setUserId(rs.getString("user_id"));
				dto.setQnaTitle(rs.getString("qna_title"));
				dto.setQnaContent(rs.getString("qna_content"));
				dto.setQnaGroup(rs.getInt("qna_group"));
				dto.setQnaStep(rs.getInt("qna_step"));
				dto.setQnaDate(rs.getString("qna_date"));
				dto.setQnaHit(rs.getInt("qna_hit"));
				dto.setQnaFile(rs.getString("qna_file"));

				list.add(dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}

		return list;
	}
	
	// 관리자 ID 체크용 메서드
	public int AdminIdCheck(String adminId) {

		int result = 0;

		try {
			openConn();

			sql = "select admin_id from hotel_admin where admin_id = ?";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, adminId);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				result = 1;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}

		return result;
	}

	// QnA글 상세내역 보기 시 답변글 호출하는 메서드
	public QnaDTO getQnaReplyCont(int qna_no) {
		
		QnaDTO dto = new QnaDTO();

		try {
			openConn();

			sql = "select * from qna where qna_group = ? and qna_step = 1";

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, qna_no);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				dto.setQnaNo(rs.getInt("qna_no"));
				dto.setUserId(rs.getString("user_id"));
				dto.setQnaTitle(rs.getString("qna_title"));
				dto.setQnaContent(rs.getString("qna_content"));
				dto.setQnaGroup(rs.getInt("qna_group"));
				dto.setQnaStep(rs.getInt("qna_step"));
				dto.setQnaDate(rs.getString("qna_date"));
				dto.setQnaHit(rs.getInt("qna_hit"));
				dto.setQnaFile(rs.getString("qna_file"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}

		return dto;
	}

	// 다음글 호출하는 메서드
	public QnaDTO getQnaUp(int qna_no) {
		
		QnaDTO dto = new QnaDTO();

		try {
			openConn();

			sql = "select qna_no, qna_title from qna where qna_no > ? and qna_step = 0 order by qna_no";

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, qna_no);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				dto.setQnaNo(rs.getInt("qna_no"));
				dto.setQnaTitle(rs.getString("qna_title"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}

		return dto;
	}

	// 이전글 호출하는 메서드
	public QnaDTO getQnaDown(int qna_no) {
		
		QnaDTO dto = new QnaDTO();

		try {
			openConn();

			sql = "select qna_no, qna_title from qna where qna_no < ? and qna_step = 0 order by qna_no desc";

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, qna_no);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				dto.setQnaNo(rs.getInt("qna_no"));
				dto.setQnaTitle(rs.getString("qna_title"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}

		return dto;
	}

}