package com.aim.theater.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.th")
public class TheaterFrontAction extends HttpServlet {

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// 1. 가상 주소를 계산
		System.out.println("C : 1. 가상주소 계산 시작");

		String requestURI = request.getRequestURI();		
		System.out.println("C : requestURI : " + requestURI);
				
		String ctxPath = request.getContextPath();	
		System.out.println("C : ctxPath : " + ctxPath);
				
		String command = requestURI.substring(ctxPath.length());
		System.out.println("C : command : " + command);
				
		System.out.println("C : 1. 가상주소 계산 끝\n");
		
		// 2. 가상주소 매핑
    	System.out.println("C : 2. 가상주소 매핑 시작");

    	Action action = null;
    	ActionForward forward = null;
    	
    	if(command.equals("/Seomyeon.th")) {	// seomyeon.aim 매핑
    		System.out.println("C : /Seomyeon 호출");
    		System.out.println("C : 패턴1 사용 - view 호출");
    		
    		forward = new ActionForward();
    		forward.setPath("/theater/seomyeon.jsp");
    		forward.setRedirect(false);
    		
    	} // seomyeon.aim 매핑
    	else if(command.equals("/Haeundae.th")) {	// haeundae.aim 매핑
    		System.out.println("C : /Haeundae.th 호출");
    		System.out.println("C : 패턴1 사용 - view 호출");
    		
    		forward = new ActionForward();
    		forward.setPath("/theater/haeundae.jsp");
    		forward.setRedirect(false);
    		
    	} // haeundae.aim 매핑
    	else if(command.equals("/Sasang.th")) {	// sasang.aim 매핑 
    		System.out.println("C : /Sasang.th 호출");
    		System.out.println("C : 패턴1 사용 - view 호출");
    		
    		forward = new ActionForward();
    		forward.setPath("/theater/sasang.jsp");
    		forward.setRedirect(false);
    		
    	} // sasang.aim 매핑
    	else if(command.equals("/Dongrae.th")) {	// dongrae.aim 매핑 
    		System.out.println("C : /Dongrae.th 호출");
    		System.out.println("C : 패턴1 사용 - view 호출");
    		
    		forward = new ActionForward();
    		forward.setPath("/theater/dongrae.jsp");
    		forward.setRedirect(false);
    		
    	} // dongrae.aim 매핑
    	else if(command.equals("/Daeyeon.th")) {	// daeyeon.aim 
    		System.out.println("C : /Daeyeon.th 호출");
    		System.out.println("C : 패턴1 사용 - view 호출");
    		
    		forward = new ActionForward();
    		forward.setPath("/theater/daeyeon.jsp");
    		forward.setRedirect(false);
    		
    	} // daeyeon.aim 
    	
    	
    	
    	
    	
    	/* 나중에 사용할거  */
//    	else if(command.equals("/LoginAction.aim")) {			
//    		System.out.println("C : /LoginAction.mo");
//    		System.out.println("C : 패턴2 - DB사용, 페이지 이동");
//    		
//    		// LoginAction()
//    		action = new LoginAction();
//    		try {
//				forward = action.execute(request, response);
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//    	} // LoginAction.aim 끝
    	

    	
    	

    	
    	System.out.println("C : 2. 가상주소 매핑 끝\n");
	
    	// 3. 페이지 이동
    	System.out.println("C : 3. 페이지 이동 시작");
    	
    	if(forward != null) {		// 이동경로가 있음
    		if(forward.isRedirect()) {		// true 일 때,
				System.out.println("C : sendRedirect() : " + forward.getPath());
				response.sendRedirect(forward.getPath());
    		} else {						// false 일 때,
				System.out.println("C : forward() : " + forward.getPath());
				RequestDispatcher dis = request.getRequestDispatcher(forward.getPath());
				dis.forward(request, response);
    		}
    	}
    	
    	System.out.println("C : 3. 페이지 이동 끝\n");
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	
}
