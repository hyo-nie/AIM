package com.aim.movie.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.aim.movie.db.MovieDAO;

public class AdminMoiveInsertAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : /AdminMoiveInsertAction.execute() 호출 ");

		// 데이터 저장
		String movieCd1 = request.getParameter("movieCd1");
		String movieCd2 = request.getParameter("movieCd2");
		String movieCd3 = request.getParameter("movieCd3");
		String movieCd4 = request.getParameter("movieCd4");
		String movieCd5 = request.getParameter("movieCd5");
		String movieCd6 = request.getParameter("movieCd6");
		String movieCd7 = request.getParameter("movieCd7");
		String movieCd8 = request.getParameter("movieCd8");
		String movieCd9 = request.getParameter("movieCd9");
		String movieCd10 = request.getParameter("movieCd10");
		
		// MovieAPI_movieCd : 영화코드로 영화정보 조회 
		MovieAPI_movieCd movieAPI = new MovieAPI_movieCd();
		JSONObject movieInfo1 = movieAPI.requestAPI(movieCd1);
		JSONObject movieInfo2 = movieAPI.requestAPI(movieCd2);
		JSONObject movieInfo3 = movieAPI.requestAPI(movieCd3);
		JSONObject movieInfo4 = movieAPI.requestAPI(movieCd4);
		JSONObject movieInfo5 = movieAPI.requestAPI(movieCd5);
		JSONObject movieInfo6 = movieAPI.requestAPI(movieCd6);
		JSONObject movieInfo7 = movieAPI.requestAPI(movieCd7);
		JSONObject movieInfo8 = movieAPI.requestAPI(movieCd8);
		JSONObject movieInfo9 = movieAPI.requestAPI(movieCd9);
		JSONObject movieInfo10 = movieAPI.requestAPI(movieCd10);
		
		// MovieDAO : adminInsertMovie()
		MovieDAO dao = new MovieDAO();
		
		
		
		
		return null;
	}

}
