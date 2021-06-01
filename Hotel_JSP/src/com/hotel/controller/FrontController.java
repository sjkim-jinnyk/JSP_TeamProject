package com.hotel.controller;

import java.io.FileInputStream;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Properties;
import java.util.StringTokenizer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FrontController extends HttpServlet{
	
		String site_path;
	
		protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		// 한글 인코딩
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		// 현재 프로젝트명과 파일명을 문자열로 반환해주는 메소드 ==> "/14_Board_Reply/board_list.do" 문자열로 반환
		String uri = request.getRequestURI();
		System.out.println("uri >> " + uri);
		
		// 현재 프로젝트명을 문자열로 반환해주는 메소드 ==> "/14_Board_Reply"
		String path = request.getContextPath();
		System.out.println("path >> " + path);
		
		String command = uri.substring(path.length() + 1);
		System.out.println("command >> " + command);
		
		Action action = null;
		ActionForward forward = null;
		
		Properties prop = new Properties();
	
		try {
			site_path = URLDecoder.decode(FrontController.class.getResource("").getPath(), "UTF-8");
		} catch (UnsupportedEncodingException e1) {
			System.out.println("경로설정 오류");
		}
		;
		
		FileInputStream fis = new FileInputStream(site_path +"mapping.properties");
		
		prop.load(fis);
		
		String value = prop.getProperty(command);
		System.out.println("value >> " + value);
		
		if(value.substring(0,7).equals("execute")) {
			
			StringTokenizer st = new StringTokenizer(value, "|");
			String url_1 = st.nextToken();  //"execute"
			String url_2 = st.nextToken();  //"패키지명.클래스명"
			
			
			/*
			 * 동적 객체 생성 : newInstance()
			 *	- Class 객체를 이용하면 new 연산자의 사용 없이 동적으로 객세 생성이 가능
			 *	- 코드 작성 시에 클래스의 이름을 결정할 수 없고, 런타임(실행) 시에 클래스의 이름이 결정되는 경우에 유용하게 사용된다.
			 *	- newInstance() 메소드는 기본 생성자를 호출해서 객체를 생성하기 때문에 반드시 클래스에 기본 생성자가 존재해햐 한다.
			 *	- 해당 클래스가 추상클래스이거나 인터페이스일 경우 예외 발생 ==> 예외 처리 필요
			 *	- 클래스의 생성자가 접근 제한자로 인해 접근할 수 없는 경우 예외 발생 ==> 예외 처리 필요
			 *	- 반환타입은 Object 타입이므로 맞게 형변환을 해주면 되지만, 클래스의 타입을 모르는 상태이므로 형변환을 해줄 수 가 없음
			 *	- 이러한 문제를 해결하기 위해서 인터페이스 사용
			 *	- Class.forName(class 이름)은 파라미터로 받은 class 이름에 해당하는 클래스를 로딩한 후, 그 클래스에 해당하는 인터페이스를 리턴
			 *	- newInstance() 메소드는 로딩한 클래스의 객체를 생성하는 메소드이고, 이렇게 생성된 객체를 동적 객체 생성이라고 함
			 */
			
			try {
				Class url = Class.forName(url_2);
				
				// 동적으로 객체 생성, action = new BbListAction();
				action = (Action)url.newInstance();
				forward = action.execute(request, response);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
					
		}else {  // value 값이 "execute"가 아닌 경우 view page로 이동
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath(value);
		}
		
		if(forward !=  null) {
			if(forward.isRedirect() ) { // true인 경우
				response.sendRedirect(forward.getPath());
			}else {  //false는 view page로 이동
				RequestDispatcher rd = request.getRequestDispatcher(forward.getPath());
				rd.forward(request, response);
			}
		}
	}
}