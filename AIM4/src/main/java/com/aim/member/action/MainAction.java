package com.aim.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : MainAction.aim 호출 ");
		
		// 메인페이지에 DB사용하는 코드 나중에 구현
		
		// 페이지 이동 준비
		ActionForward forward = new ActionForward();
		forward.setPath("./section/main.jsp");
		forward.setRedirect(false);
		
		return forward;
	}
	

}
