package com.aim.ticketing.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aim.ticketing.db.ReservationDAO;

public class SelectSeatAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : SelectSeatAction.execute() 호출 ");
		
		// 데이터 저장
		int select_scCode = Integer.parseInt(request.getParameter("scCode"));
		
		// ReservationDAO - scCode로 schedule 조회 : getSchedule()
		ReservationDAO dao = new ReservationDAO();
		
		return null;
	}

}
