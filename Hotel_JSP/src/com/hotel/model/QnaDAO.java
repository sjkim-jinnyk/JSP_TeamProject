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

	// qna 테이블의 전체 게시물의 수를 조회하는 메서드
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

	// qna 테이블의 페이지에 보여질 게시물의 수만큼 게시물을 조회하는 메서드
	public List<QnaDTO> getQnaList(int page, int rowsize) {
		List<QnaDTO> list = new ArrayList<QnaDTO>();

		// 해당 페이지에서의 시작 번호
		int startNo = (page * rowsize) - (rowsize - 1);

		// 해당 페이지에서의 마지막 번호
		int endNo = (page * rowsize);

		try {
			openConn();

			sql = "select * from (select row_number() over(order by qna_group desc, qna_step) rnum, q.* from qna q) where rnum >= ? and rnum <= ?";

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
	
	// qna 테이빌의 게시물 조회수를 증가시키는 메서드
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
	
	// qna 테이블의 게시물 번호에 해당하는 상세내역을 조회하는 메서드
	public QnaDTO getQnaCont(int no) {
		QnaDTO dto = new QnaDTO();

		try {
			openConn();

			sql = "select * from qna where qna_no = ?";

			pstmt = con.prepareStatement(sql);

			pstmt.setInt(1, no);

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

}
