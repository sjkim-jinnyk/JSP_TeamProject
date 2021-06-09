package com.hotel.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.hotel.model.UserDTO;
 
public class UserDAO {

	Connection con = null;			// DB 연결하는 객체.
	PreparedStatement pstmt = null;	// DB에 SQL문을 전송하는 객체.
	ResultSet rs = null;			// SQL문을 실행 후 결과 값을 가지고 있는 객체.

	String sql = null;				// 쿼리문을 저장할 객체.

	// 싱글톤 방식으로 객체를 만들기 위해서는 우선적으로 기본생성자의 접근제어자를 private static으로 선언
	private static UserDAO instance = null;

	// 외부에서 객체 생성을 하지 못하게 private으로 접근을 제어
	private UserDAO() {}

	// 기본 생성자 대신에 싱긑턴 객체를 return을 해 주는 getInstance() 메서드를 만들어서 여기에 접근하게 하는 방법
	public static UserDAO getInstance() {
		if (instance == null) {
			instance = new UserDAO();
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
	
	/*
	 *  로그인
	 */
	
	// 회원 체크하는 메서드
	public int userCheck(String userId, String userPwd) {
		
		int result = 0;

		try {
			openConn();
			
			sql = "select * from HOTEL_USER where USER_ID = ?";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(userPwd.equals(rs.getString("USER_PWD"))) {
					result = 1;
				} else {	// 비밀번호가 틀린 경우
					result = -1;
				}
			} else {	// 회원 아이디가 없는 경우(회원 아닌 경우)
				result = -2;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
		return result;
		
	} // userCheck() 메서드 end
	
	
	// id에 해당하는 유저 정보 가져오는 메서드
	public UserDTO getUser(String userId) {
		
		UserDTO dto = new UserDTO();

		try {
			openConn();
			
			sql = "select * from HOTEL_USER where USER_ID = ?";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto.setUserId(rs.getString("USER_ID"));
				dto.setUserPwd(rs.getString("USER_PWD"));
				dto.setUserName(rs.getString("USER_NAME"));
				dto.setUserGen(rs.getString("USER_GEN"));
				dto.setUserPhone(rs.getString("USER_PHONE"));
				dto.setUserAddr(rs.getString("USER_ADDR"));
				dto.setUserEmail(rs.getString("USER_EMAIL"));
				dto.setUserPoint(rs.getInt("USER_POINT"));
				dto.setUserDate(rs.getString("USER_DATE"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
		return dto;
		
	} // getMember() 메서드 end
	
	
	/*
	 *  회원가입
	 */
	
	// 회원가입 메서드
	public int userJoin(UserDTO dto) {
		int result = 0;
	
		try {
			openConn();
			
			sql = "insert into HOTEL_USER values(?,?,?,?,?,?,?,default,sysdate)";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, dto.getUserId());
			pstmt.setString(2, dto.getUserPwd());
			pstmt.setString(3, dto.getUserName());
			pstmt.setString(4, dto.getUserGen());
			pstmt.setString(5, dto.getUserPhone());
			pstmt.setString(6, dto.getUserAddr());
			pstmt.setString(7, dto.getUserEmail());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
		return result;
		
	} // userJoin() 메서드 end
	
	
	// id 중복체크 확인하는 메서드,
	public int idCheck(String userId) {
		
		int result = 0;

		try {
			openConn();
			
			sql = "select * from hotel_user where user_id = ?";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = 1;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
		return result;

	} // idCheck()메서드 end
	
	
	/*
	 * 아이디/비밀번호 찾기
	 */
	
	// 아이디 찾기 메서드
	public String idSearch(String userName, String userPhone) {
		
		String result = "";

		try {
			openConn();
			
			sql = "select user_id from hotel_user where user_name = ? and user_phone = ?";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, userName);
			pstmt.setString(2, userPhone);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = rs.getString(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
		return result;
	
	} // idSearch() 메서드 end

	
	// 비밀번호 찾기 메서드
	public String pwdSearch(String userId, String userName) {
		
		String result = "";
		
		try {
			openConn();
			
			sql = "select user_pwd from hotel_user where user_id = ? and user_name =?";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			pstmt.setString(2, userName);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = rs.getString(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
		return result;
		
	} // pwdSearch() 메서드 end
	
	
	
	
	
}
