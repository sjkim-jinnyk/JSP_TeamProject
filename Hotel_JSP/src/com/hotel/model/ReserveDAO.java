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
 
public class ReserveDAO {

	Connection con = null;			// DB 연결하는 객체.
	PreparedStatement pstmt = null;	// DB에 SQL문을 전송하는 객체.
	ResultSet rs = null;			// SQL문을 실행 후 결과 값을 가지고 있는 객체.

	String sql = null;				// 쿼리문을 저장할 객체.

	// 싱글톤 방식으로 객체를 만들기 위해서는 우선적으로 기본생성자의 접근제어자를 private static으로 선언
	private static ReserveDAO instance = null;

	// 외부에서 객체 생성을 하지 못하게 private으로 접근을 제어
	private ReserveDAO() {}

	// 기본 생성자 대신에 싱긑턴 객체를 return을 해 주는 getInstance() 메서드를 만들어서 여기에 접근하게 하는 방법
	public static ReserveDAO getInstance() {
		if (instance == null) {
			instance = new ReserveDAO();
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
	
	public List<ReserveDTO> getInfo(String name, String in, String out) {
		
		List<ReserveDTO> list = new ArrayList<ReserveDTO>();
		
		try {
			openConn();
			
			sql = "select * from reserve where res_in = ? or res_out = ? and room_name = ?";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, in);
			pstmt.setString(2, out);
			pstmt.setString(3, name);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				ReserveDTO dto = new ReserveDTO();
				dto.setRoomName(rs.getString("room_name"));
				dto.setResIn(rs.getString("res_in"));
				dto.setResOut(rs.getString("res_out"));
				list.add(dto);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
		
		return list;
	} // getInfo()
	
	public String getinfo_html(String name, String in, String out) {
		
		String result = "";
		
		try {
			openConn();
			
			sql = "select * from reserve where res_in = ? or res_out = ? and room_name = ?";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, in);
			pstmt.setString(2, out);
			pstmt.setString(3, name);
			
			rs = pstmt.executeQuery();
			
			result += "<rooms>";
			while(rs.next()) {
				result += "<reserve>";
				result += "<name>" + rs.getString("room_name") +"</name>";
				result += "<resin>" + rs.getString("res_in") +"</resin>";
				result += "<resout>" + rs.getString("res_out") +"</resout>";
				result += "</reserve>";
			}
			result += "</rooms>";
			
			System.out.println("test :" + result);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
		
		return result;
	} // getinfo_html()
	
}
