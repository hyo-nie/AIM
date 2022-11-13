package com.aim.review.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("*.mv")
public class ReviewFrontController extends HttpServlet {
  protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
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
      
      if(command.equals("/Review.mv")) {      //리뷰게시판 페이지
        System.out.println("C : ReviewList.mv");
        System.out.println("C : 패턴3 사용");
        
        action = new ReviewListAction();
        try {
          action.execute(request, response);
        } catch (Exception e) {
          e.printStackTrace();
        }
      } //Review.mv 끝
      
      
      System.out.println("C : 2. 가상주소 매핑 끝\n");
      
      // 3. 페이지 이동
      System.out.println("C : 3. 페이지 이동 시작");
      
      if(forward != null) {   // 이동경로가 있음
        if(forward.isRedirect()) {    // true 일 때,
        System.out.println("C : sendRedirect() : " + forward.getPath());
        response.sendRedirect(forward.getPath());
        } else {            // false 일 때,
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
