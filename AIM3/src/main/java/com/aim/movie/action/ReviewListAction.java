package com.aim.movie.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aim.movie.db.ReviewDAO;
import com.aim.movie.db.ReviewDTO;


public class ReviewListAction implements Action {

  @Override
  public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
    System.out.println("M : ReviewListAction_execute() 호출");
    
    String movieCd = request.getParameter("movieCd");
    
    System.out.println(movieCd);
    ReviewDAO dao = new ReviewDAO();
    
    ArrayList reviewListAll = dao.getReviewList(movieCd);
    System.out.println(reviewListAll);
    request.setAttribute("reviewListAll", reviewListAll);
    
    ActionForward forward = new ActionForward();
    forward.setPath("./movie/reviewList.jsp");
    forward.setRedirect(false);
    
    return forward;
  }

}
