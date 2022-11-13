package com.aim.movie.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aim.movie.db.MovieDAO;
import com.aim.movie.db.MovieDTO;

public class MovieDetailAction implements Action {

  @Override
  public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
    System.out.println("M : MovieDetailAction_execute() 호출");
    
    MovieDAO dao = new MovieDAO();
    MovieDTO dto = new MovieDTO();
    
    dto = dao.getMovieDetail(request.getParameter("movieCd")); 
    
    request.setAttribute("dto", dto);
    
    ActionForward forward = new ActionForward();
    forward.setPath("./movie/movieDetail.jsp");
    forward.setRedirect(false);
    
    return forward; 
  }

}
