package com.aim.store.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aim.store.db.AdminStoreDAO;

public class AdminStoreDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("M : AdminStoreDelete_execute()");
		
		// 전달 정보 : st_num
		int st_num = Integer.parseInt(request.getParameter("st_num"));
		
		// 삭제 메서드 - adminStoreDel();
		AdminStoreDAO dao = new AdminStoreDAO();
		dao.adminStoreDel(st_num);
		
		System.out.println("M : 삭제가 완료되었습니다");
		
		ActionForward forward = new ActionForward();
		forward.setPath("./AdminStoreList.ad");
		forward.setRedirect(true);
		
		return forward;
	}

}
