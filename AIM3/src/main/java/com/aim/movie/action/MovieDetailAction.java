package com.aim.movie.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aim.movie.db.MovieDAO;
import com.aim.movie.db.MovieDTO;
import com.aim.movie.db.ReviewDAO;

public class MovieDetailAction implements Action {

  @Override
  public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
    System.out.println("M : MovieDetailAction_execute() 호출");
    
    MovieDAO dao = new MovieDAO();
    MovieDTO dto = new MovieDTO();
    
    dto = dao.getMovieDetail(request.getParameter("movieCd")); 
    
    request.setAttribute("dto", dto);
    
    String movieCd = request.getParameter("movieCd");
    //System.out.println(movieCd);

    ReviewDAO redao = new ReviewDAO();
    
    ArrayList reviewListAll = redao.getReviewList(movieCd);
    //System.out.println(reviewListAll);
    request.setAttribute("reviewListAll", reviewListAll);
    
    ActionForward forward = new ActionForward();
    forward.setPath("./movie/movieDetail.jsp");
    forward.setRedirect(false);
    
    return forward; 
  }
}
