package com.aim.movie.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aim.movie.db.MovieDAO;

public class MovieInfoAction implements Action {

  @Override
  public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
    System.out.println("M : MovieInfoAction_execute() 호출");   
    
    String movieCd = request.getParameter("movieCd");
    
    MovieDAO dao = new MovieDAO();
   
    
    return null;
  }

}
