package com.aim.movie.action;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.aim.member.db.MemberDAO;
import com.aim.member.db.MemberDTO;
import com.aim.movie.db.ReviewDAO;
import com.aim.movie.db.ReviewDTO;

public class ReviewWriteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("M : ReviewWriteAction_execute() 호출");
		
		String review_sy = request.getParameter("review_sy");
		String movieCd = request.getParameter("movieCd");
		
		System.out.println(review_sy);
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		MemberDAO mdao = new MemberDAO();
		MemberDTO mdto = mdao.getMember(id);
		
		ReviewDTO dto = new ReviewDTO();
		dto.setReview(review_sy);
		dto.setMovieCd(movieCd);
		dto.setMb_nick(mdto.getMb_nick());
		
		ReviewDAO dao = new ReviewDAO();
		
		dao.insertReview(dto);
		
		ActionForward forward = new ActionForward();
		forward.setPath("./MovieDetail.mv?movieCd="+movieCd);
		forward.setRedirect(true);
		
		
		return forward;
	}

}
