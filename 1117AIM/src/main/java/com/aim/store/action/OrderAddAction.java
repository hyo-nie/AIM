package com.aim.store.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.aim.store.db.CartDAO;
import com.aim.store.db.OrderDAO;
import com.aim.store.db.OrderDTO;

public class OrderAddAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : OrderAddAction_execute");
		
		// 세션제어(로그인체크)
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		// id 정보 없을 때
		ActionForward forward = new ActionForward();
		if(id == null) {
			forward.setPath("./Login.mo"); // 임의 main 주소 바꿔야함
			forward.setRedirect(true);
			
			return forward;
		}
		
		// 전달된 주문 정보
		
		OrderDTO odto = new OrderDTO();
		
		odto.setO_id(request.getParameter(id));
		odto.setO_tel(request.getParameter("o_tel"));
		odto.setO_pay(request.getParameter("o_pay"));
		
		System.out.println(" M : "+odto);
		
		// 주문 상품정보 (장바구니 + 상품정보)
		CartDAO cdao = new CartDAO();
		ArrayList totalList = cdao.getCartList(id);
		
		ArrayList cartList = (ArrayList)totalList.get(0);
		ArrayList productList = (ArrayList)totalList.get(1);
		
		// 결제 호출
		System.out.println(" M : 결제 처리 완료");
		
		// 주문정보 저장
		OrderDAO odao = new OrderDAO();
		odao.addOrder(odto, cartList, productList);
		
		// 장바구니 정보 삭제
		cdao.deleteCart(id);
		
		// 페이지 이동
		forward.setPath("./OrderList.or");
		forward.setRedirect(true);
		
		return forward;
	}

}
