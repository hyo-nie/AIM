package com.aim.store.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aim.store.db.StoreDAO;

public class StoreMainAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("M : StoreMainAction_execute()");
		
		// 메인에는 각 카테고리에 해당하는 상품들이 출력되어야 함! but 길이 정해서! 3개~4개?
		// 1. 추천상품(관리자가 등록할 예정)
		// 2. 기프트카드
		// 3. 팝콘 / 음료 / 굿즈
		
		StoreDAO dao = new StoreDAO();
		List gc_list = dao.getStoreProduct("1");		// 기프트카드 카테고리 상품들
		List pop_list = dao.getStoreProduct("2");		// 팝콘 카테고리 상품들
		
		request.setAttribute("gc_list", gc_list);
		request.setAttribute("pop_list", pop_list);
	
		// 페이지 이동하기(./store/store_main.jsp)
		ActionForward forward = new ActionForward();
		forward.setPath("./store/store_main.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
