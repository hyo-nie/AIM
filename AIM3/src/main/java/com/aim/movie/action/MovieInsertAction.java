package com.aim.movie.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

public class MovieInsertAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : MovieInsertAction.execute() 호출 ");
		
		// 무비 API 호출 
		MovieAPI api = new MovieAPI();
		List<JSONObject> boxOfiiceList = api.requestAPI();
		
		// request 객체에 저장
		request.setAttribute("boxOfficeList", boxOfiiceList);
		
		// 페이지 이동 준비
		
		ActionForward forward = new ActionForward();
		forward.setPath("./admin/adminMovieInsertForm.jsp");
		forward.setRedirect(false);
		
		return forward;
	}
}
