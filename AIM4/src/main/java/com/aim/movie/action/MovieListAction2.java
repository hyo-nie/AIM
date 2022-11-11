package com.aim.movie.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import com.aim.movie.db.MovieDAO;
import com.aim.movie.db.MovieDTO;

public class MovieListAction2 implements Action {

  @Override
  public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
    System.out.println("M : MovieListAction_execute() 호출");
    
    MovieDAO movieDao = new MovieDAO();
    MovieAPI mv = new MovieAPI();
	List<JSONObject> movieList = mv.requestAPI();
	List<MovieDTO> movieDtoList = null;
	
	
	/*
	// 1. MovieAPI에서 조회한 영화 목록 insert 
	// movieList에서 한 건씩 꺼내서 해당 건의 movieCd를 가져옴 > movieCd로 조회되는 영화가 없는 경우 insert
	for(JSONObject movie : movieList) {
		String movieCd = movie.getString("movieCd");
		
		// movieCd의 데이터가 있는지 확인
		MovieDTO movieDto = movieDao.getMovieList(movieCd);
		if(movieDto == null) {	//비교하는 방법은 확인 필요
			// movieCd로 조회된 movie가 없는 경우 해당 movie에 대한 정보 insert
//			movieDao.setMovie(movie);	// json타입을 그대로 넘겨줄 경우
//			movieDao.setMovie(dto);	// json에 있는 데이터를 dto에 담아서 넘겨줄 경우
		}
	}
	
	// 2. MovieAPI에서 조회한 영화 목록 select 
	for(JSONObject movie : movieList) {
		String movieCd = movie.getString("movieCd");
		MovieDTO movieDto = movieDao.getMovieList(movieCd);
		movieDtoList.add(movieDto);
	}
	
	request.setAttribute("dto", movieDtoList);
	*/
	
    
    ActionForward forward = new ActionForward();
    forward.setPath("./movie/movieList.jsp");
    forward.setRedirect(false);
    
    return forward;
  }

}
