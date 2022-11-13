package com.aim.movie.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aim.movie.db.ReviewDAO;


public class ReviewListAction implements Action {

  @Override
  public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
    System.out.println("M : ReviewListAction_execute() 호출");
    
    ReviewDAO dao = new ReviewDAO();
    
    ArrayList reviewListAll = dao.getReviewList();
    
    request.setAttribute("reviewListAll", reviewListAll);
    
    ActionForward forward = new ActionForward();
    forward.setPath("./review/reviewList.jsp");
    forward.setRedirect(false);
    
    return null;
  }

}
