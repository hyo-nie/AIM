package com.aim.theater.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aim.theater.db.TheaterDAO;
import com.aim.theater.db.TheaterDTO;

public class ScheduleListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("M : SeomyeonListAction_execute()");
	
		//전달정보 저장
		String date = request.getParameter("date");
		int branchCd = Integer.parseInt(request.getParameter("branchCd"));
		
		if(date == null) {
			date="2022-11-08";
		}
		
		//DB에 저장된 정보를 가져오기
		TheaterDAO dao = new TheaterDAO();				
		TheaterDTO dto = dao.getBranchIntro(branchCd);
		List scheduleList = dao.getScheList(branchCd,date);
		
		//연결된 view 페이지로 정보 전달
		request.setAttribute("dto", dto);
		request.setAttribute("scheduleList", scheduleList);
		
		//페이지 이동	
		ActionForward forward = new ActionForward();
		forward.setPath("./theater/selectedTheater.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
