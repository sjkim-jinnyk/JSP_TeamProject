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
	
	// 현재 날짜에 체크인 되어있는 방 번호를 넘겨주는 메서드
	public String getRoomNumber(String name, String date) {
		String result = "";
		
		try {
			openConn();
			
			sql = "select * from reserve where room_name = ? and to_date(?,'yyyy-mm-dd') between to_date(res_in, 'yyyy-mm-dd') and to_date(res_out, 'yyyy-mm-dd')-1 order by room_number";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, name);
			pstmt.setString(2, date);
			
			rs = pstmt.executeQuery();
			
			result += "<roomnums>";
			while(rs.next()) {
				result += "<roomnum>";
				result += "<number>" + rs.getInt("room_number") + "</number>";
				result += "</roomnum>";
			}
			result += "</roomnums>";
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
		
		return result;
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
			
			sql = "select * from reserve where room_name = ? and to_date(res_in,'yyyy-mm-dd') between to_date(?, 'yyyy-mm-dd') and to_date(?, 'yyyy-mm-dd')"
					+ "order by res_in";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, name);
			pstmt.setString(2, in);
			pstmt.setString(3, out);
			
			rs = pstmt.executeQuery();
			
			result += "<rooms>";
			while(rs.next()) {
				result += "<reserve>";
				
				result += "<id>" + rs.getString("user_id") + "</id>";
				result += "<name>" + rs.getString("room_name") + "</name>";
				result += "<num>" + rs.getInt("room_number") +"</num>";
				result += "<date>" + rs.getString("res_date") +"</date>";
				result += "<nod>" + rs.getInt("res_NoD") +"</nod>";
				result += "<resin>" + rs.getString("res_in") +"</resin>";
				result += "<resout>" + rs.getString("res_out") +"</resout>";
				result += "<adult>" + rs.getInt("res_adult") +"</adult>";
				result += "<child>" + rs.getInt("res_child") +"</child>";
				result += "<adultbr>" + rs.getInt("res_adult_br") +"</adultbr>";
				result += "<childbr>" + rs.getInt("res_child_br") +"</childbr>";
				result += "<bed>" + rs.getInt("res_bed") +"</bed>";
				result += "<total>" + rs.getInt("res_total") +"</total>";
				result += "<request>" + rs.getString("res_request") +"</request>";
				result += "</reserve>";
			}
			result += "</rooms>";
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
		
		return result;
	} // getinfo_html()
	
	// 마이페이지 - 예약내역 조회하는 메서드
	public List<ReserveDTO> resList(String userId) {
		
		List<ReserveDTO> list = new ArrayList<ReserveDTO>();

		try {openConn();
		
			sql = "select * from reserve where user_id = ?";
		
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ReserveDTO dto = new ReserveDTO();
				
				dto.setResNo(rs.getInt("res_no"));
				dto.setUserId(rs.getString("user_id"));
				dto.setRoomName(rs.getString("room_name"));
				dto.setRoomNumber(rs.getInt("room_number"));
				dto.setResDate(rs.getString("res_date"));
				dto.setResIn(rs.getString("res_in"));
				dto.setResOut(rs.getString("res_out"));
				dto.setResNod(rs.getString("res_nod"));
				dto.setResAdult(rs.getInt("res_adult"));
				dto.setResChild(rs.getInt("res_child"));
				dto.setResAdultBr(rs.getInt("res_adult_br"));
				dto.setResChildBr(rs.getInt("res_child_br"));
				dto.setResBed(rs.getInt("res_bed"));
				dto.setResTotal(rs.getInt("res_total"));
				dto.setResRequest(rs.getString("res_request"));
			
				list.add(dto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
		return list;
		
	} // resList() 메서드 end
	
	// 회원 id로 예약정보 찾기
	public String getinfo_id(String id) {
		
		String result = "";
		
		try {
			openConn();
			
			sql = "select * from reserve where user_id = ?";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			result += "<rooms>";
			while(rs.next()) {
				result += "<reserve>";
				
				result += "<id>" + rs.getString("user_id") + "</id>";
				result += "<name>" + rs.getString("room_name") + "</name>";
				result += "<num>" + rs.getInt("room_number") +"</num>";
				result += "<date>" + rs.getString("res_date") +"</date>";
				result += "<nod>" + rs.getInt("res_NoD") +"</nod>";
				result += "<resin>" + rs.getString("res_in") +"</resin>";
				result += "<resout>" + rs.getString("res_out") +"</resout>";
				result += "<adult>" + rs.getInt("res_adult") +"</adult>";
				result += "<child>" + rs.getInt("res_child") +"</child>";
				result += "<adultbr>" + rs.getInt("res_adult_br") +"</adultbr>";
				result += "<childbr>" + rs.getInt("res_child_br") +"</childbr>";
				result += "<bed>" + rs.getInt("res_bed") +"</bed>";
				result += "<total>" + rs.getInt("res_total") +"</total>";
				result += "<request>" + rs.getString("res_request") +"</request>";
				result += "</reserve>";
			}
			result += "</rooms>";
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
		
		return result;
	} // getinfo_html()
	

	// 마이페이지 - 예약번호에 해당하는 예약 상세내역 가져오는 메서드
	public ReserveDTO resCont(int resNo) {
		
		ReserveDTO dto = new ReserveDTO();
		
		try {
			openConn();
			
			sql = "select * from reserve where res_no = ?";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, resNo);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto.setResNo(rs.getInt("res_no"));
				dto.setUserId(rs.getString("user_id"));
				dto.setRoomName(rs.getString("room_name"));
				dto.setRoomNumber(rs.getInt("room_number"));
				dto.setResDate(rs.getString("res_date"));
				dto.setResIn(rs.getString("res_in"));
				dto.setResOut(rs.getString("res_out"));
				dto.setResNod(rs.getString("res_nod"));
				dto.setResAdult(rs.getInt("res_adult"));
				dto.setResChild(rs.getInt("res_child"));
				dto.setResAdultBr(rs.getInt("res_adult_br"));
				dto.setResChildBr(rs.getInt("res_child_br"));
				dto.setResBed(rs.getInt("res_bed"));
				dto.setResTotal(rs.getInt("res_total"));
				dto.setResRequest(rs.getString("res_request"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
		return dto;
		
	} // getResCont() 메서드 end
	
	
	// 마이페이지 - 예약 건수 확인하는 메서드
	public int rescount(String userId) {
		
		int count = 0;
		
		try {
			openConn();
			
			sql = "select count(*) from reserve where user_id = ?";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				count = rs.getInt(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
		return count;
		
	} // rescount() 메서드 end
	
	
	// 마이페이지 - 예약변경하는 메서드
	public int resUpdate(ReserveDTO dto) {
		
		int result = 0;

		try {
			openConn();
			
			sql = "update reserve set "
					+ " res_adult = ?, res_child = ?, "
					+ " res_adult_br = ?, res_child_br = ?, "
					+ " res_bed = ?, res_request = ? "
					+ " where res_no = ?";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, dto.getResAdult());
			pstmt.setInt(2, dto.getResChild());
			pstmt.setInt(3, dto.getResAdultBr());
			pstmt.setInt(4, dto.getResChildBr());
			pstmt.setInt(5, dto.getResBed());
			pstmt.setString(6, dto.getResRequest());
			pstmt.setInt(7, dto.getResNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
		return result;
		
	} // resUpdate() 메서드 end
	

	// 체크인 날짜에 해당하는 고객 정보를 가져오는 메서드
	public String getinfo_user(String resin) {
		String result ="";
		
		try {
			openConn();
			
			sql = "select * frome reserve where res_in = ? order by res_no";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, resin);
			
			rs = pstmt.executeQuery();
			
			result += "<users>";
			while(rs.next()) {
				result += "<user>";
				
				result += "<id>" + rs.getString("user_id") + "</id>";
				result += "<name>" + rs.getString("room_name") + "</name>";
				result += "<num>" + rs.getInt("room_number") +"</num>";
				result += "<date>" + rs.getString("res_date") +"</date>";
				result += "<nod>" + rs.getInt("res_NoD") +"</nod>";
				result += "<resin>" + rs.getString("res_in") +"</resin>";
				result += "<resout>" + rs.getString("res_out") +"</resout>";
				result += "<adult>" + rs.getInt("res_adult") +"</adult>";
				result += "<child>" + rs.getInt("res_child") +"</child>";
				result += "<adultbr>" + rs.getInt("res_adult_br") +"</adultbr>";
				result += "<childbr>" + rs.getInt("res_child_br") +"</childbr>";
				result += "<bed>" + rs.getInt("res_bed") +"</bed>";
				result += "<total>" + rs.getInt("res_total") +"</total>";
				result += "<request>" + rs.getString("res_request") +"</request>";
				result += "</user>";
			}
			result += "</users>";
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
		
		return result;
	} // getinfo_user() 메서드 end
	
	
	
	
	
	
}

