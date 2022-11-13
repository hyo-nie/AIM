package com.aim.movie.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.aim.movie.db.MovieDAO;

public class AdminMovieInsertAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : /AdminMovieInsertAction.execute() 호출 ");
		
		// 데이터 저장 (movieCd)
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
		
		// 데이터 저장 (rank)
		int rank1 = Integer.parseInt(request.getParameter("rank1"));
		int rank2 = Integer.parseInt(request.getParameter("rank2"));
		int rank3 = Integer.parseInt(request.getParameter("rank3"));
		int rank4 = Integer.parseInt(request.getParameter("rank4"));
		int rank5 = Integer.parseInt(request.getParameter("rank5"));
		int rank6 = Integer.parseInt(request.getParameter("rank6"));
		int rank7 = Integer.parseInt(request.getParameter("rank7"));
		int rank8 = Integer.parseInt(request.getParameter("rank8"));
		int rank9 = Integer.parseInt(request.getParameter("rank9"));
		int rank10 = Integer.parseInt(request.getParameter("rank10"));
		
		// 데이터 저장 (총관객수)
		int audiAcc1 = Integer.parseInt(request.getParameter("audiAcc1"));
		int audiAcc2 = Integer.parseInt(request.getParameter("audiAcc2"));
		int audiAcc3 = Integer.parseInt(request.getParameter("audiAcc3"));
		int audiAcc4 = Integer.parseInt(request.getParameter("audiAcc4"));
		int audiAcc5 = Integer.parseInt(request.getParameter("audiAcc5"));
		int audiAcc6 = Integer.parseInt(request.getParameter("audiAcc6"));
		int audiAcc7 = Integer.parseInt(request.getParameter("audiAcc7"));
		int audiAcc8 = Integer.parseInt(request.getParameter("audiAcc8"));
		int audiAcc9 = Integer.parseInt(request.getParameter("audiAcc9"));
		int audiAcc10 = Integer.parseInt(request.getParameter("audiAcc10"));
		
		// 데이터저장 poster(테스트중)
		String poster1 = request.getParameter("poster1");
		String poster2 = request.getParameter("poster2");
		String poster3 = request.getParameter("poster3");
		String poster4 = request.getParameter("poster4");
		String poster5 = request.getParameter("poster5");
		String poster6 = request.getParameter("poster6");
		String poster7 = request.getParameter("poster7");
		String poster8 = request.getParameter("poster8");
		String poster9 = request.getParameter("poster9");
		String poster10 = request.getParameter("poster10");
		
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
		
		// 영화정보 추출
//		System.out.println(movieInfo1.get("actors"));
//		JSONArray actorsArr1 = movieInfo1.getJSONArray("actors");
//		StringBuffer actors = new StringBuffer();
//		
//		for (int i = 0; i < actorsArr1.length(); i++) {
//			JSONObject actorsObject = actorsArr1.getJSONObject(i);
//			System.out.println(actorsObject.getString("peopleNm"));
//			if (i == actorsArr1.length()-1) {
//				actors.append(actorsObject.getString("peopleNm"));
//			} else {
//				actors.append(actorsObject.getString("peopleNm")+"(" +actorsObject.getString("cast")+actorsObject.getString("castEn")+ "역),");
//			}
//		}
//		
//		System.out.println("actors = " + actors);
		
		// 장르값 추출
//		System.out.println(movieInfo1.get("genres"));
//		JSONArray movieGenreArr1 = movieInfo1.getJSONArray("genres");
//		System.out.println(movieGenreArr1);
//		System.out.println(movieGenreArr1.get(0));
//		JSONObject movieGenre1 = movieGenreArr1.getJSONObject(0);
//		System.out.println(movieGenre1);
//		System.out.println(movieGenre1.getString("genreNm"));
		
		// MovieDAO : adminInsertMovie()
		MovieDAO dao = new MovieDAO();
		
		// 저장하기전 movie 테이블 모두 삭제
		dao.adminDeleteMoiveAll();
		
		// adminInserMovie() boxOffice 1~10위 영화 정보 DB에 저장 
		dao.adminInsertMovie(movieInfo1, audiAcc1, rank1);	
		dao.adminInsertMovie(movieInfo2, audiAcc2, rank2);	
		dao.adminInsertMovie(movieInfo3, audiAcc3, rank3);	
		dao.adminInsertMovie(movieInfo4, audiAcc4, rank4);	
		dao.adminInsertMovie(movieInfo5, audiAcc5, rank5);	
		dao.adminInsertMovie(movieInfo6, audiAcc6, rank6);	
		dao.adminInsertMovie(movieInfo7, audiAcc7, rank7);	
		dao.adminInsertMovie(movieInfo8, audiAcc8, rank8);	
		dao.adminInsertMovie(movieInfo9, audiAcc9, rank9);	
		dao.adminInsertMovie(movieInfo10, audiAcc10, rank10);	
		
		// 페이지 이동
		ActionForward forward = new ActionForward();
		forward.setPath("./AdminMovieList.mv");
		forward.setRedirect(true);
		
		return forward;
	}

}
