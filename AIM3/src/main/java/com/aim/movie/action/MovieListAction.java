package com.aim.movie.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.aim.movie.db.MovieDAO;
import com.aim.movie.db.MovieDTO;

public class MovieListAction implements Action {

  @Override
  public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
    System.out.println("M : MovieListAction_execute() 호출");
    
    String movieCd = request.getParameter("movieCd");
    MovieDAO dao = new MovieDAO();
    List movieList = dao.getMovieList(movieCd);
    
    //ArrayList<MovieDTO> movieList = null;
    
    request.setAttribute("movieList", movieList);
    
    
    ActionForward forward = new ActionForward();
    forward.setPath("./movie/movieList.jsp");
    forward.setRedirect(false);
    
    return forward;
  }

}
