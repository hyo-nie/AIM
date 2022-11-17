package com.aim.store.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.aim.store.db.CartDAO;
import com.aim.store.db.CartDTO;

public class CartAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : CartAction_execute 호출 ");
		
		// 로그인 체크
		// 세션제어(id)
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("mb_id");

		// id 정보 없을 때
		ActionForward forward = new ActionForward();
		if(id == null) {
			forward.setPath("./Login.aim");
			forward.setRedirect(true);
			
			return forward;
		}
		
		// CartDAO - 장바구니 정보 (구매 옵션-상품번호,구매수량,구매자)
		// => 로그인한 사용자의 장바구니 정보를 가져오기
		CartDAO dao = new CartDAO();
		CartDTO dto = new CartDTO();
		ArrayList totalList = dao.getCartList(id);
		
//		dto.setC_num(Integer.parseInt(request.getParameter("c_num")));
//		dto.setSt_num(Integer.parseInt(request.getParameter("st_num")));
//		dto.setC_amount(Integer.parseInt(request.getParameter("c_amount")));
//		dto.setSt_name(request.getParameter("st_name"));
		
		System.out.println(" M : " + totalList);
//		ArrayList cartList = dao.getCartList(id);
		
		// GoodsDAO - 상품명, 가격, 이미지 => 장바구니에 들어있는 상품의 정보를 가져오기
		
		// request 영역에 저장
//		request.setAttribute("cartList",cartList);
		request.setAttribute("cartList", totalList.get(0));
		request.setAttribute("giftcardList", totalList.get(1));
		
		// 페이지 이동(./store/cart.jsp)
		forward.setPath("./store/cart.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
