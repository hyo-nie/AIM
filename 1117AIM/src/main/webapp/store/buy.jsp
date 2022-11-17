<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AIM - ALL IN MOVIE</title>
<!-- <link href="./assets/css/giftstore.css" rel="stylesheet" type="text/css"> -->
<!-- <script src="jquery-3.6.1.js"></script> -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- <script src="jquery-3.6.1.min.js"></script> -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>

<script>
var IMP = window.IMP;   // 생략 가능
IMP.init("imp60260300"); // 예: imp00000000 

function requestPay() {
	  IMP.request_pay({ 
      pg: "html5_inicis",
      pay_method: "card",
      merchant_uid: "3131-0000015",   //주문번호
      name: "2인관람권",
      amount: 100,                         // 숫자타입
      buyer_email: "hyowon@gmail.com",
      buyer_name: "홍길동",
      buyer_tel: "010-4242-4242",
  }, function (rsp) { // callback
      if (rsp.success) {
          // 결제 성공 시 로직,
          alert('결제 성공!')
      } else {
          // 결제 실패 시 로직,
          alert('결제 실패!')
          console.log(rsp);
      }
  });
}
</script>

</head>
<body>
<!-- 관람권 & 기프트 카드 상품 조회 페이지  -->
${member }

<form action="OrderAddAction.or" method="" name="fr">

	<div id="contents" class="gift_store">
		
		<div class="cart_step_wrap">
			<ul class="cart_step step_unit3">
				<li class="step0"><span>STEP 01</span><strong>장바구니</strong></li>
				<li class="step2 active"><span>STEP 02</span><strong>결제하기</strong></li>
				<li class="step3"><span>STEP 03</span><strong>결제완료</strong></li>
			</ul>
		</div>

		<!-- 장바구니 리스트 구매상품 정보 -->
		<div class="com_cart_list_wrap com_cart_list_wrap1">
			<strong class="com_box_design_title">구매상품 정보</strong>
			<p class="cart_allchecker_wrap ">
				<strong class="com_custom_checkbox_product_name">상품명</strong> 
				<strong class="com_custom_checkbox_sel_price"> 판매금액</strong> 
				<strong class="com_custom_checkbox_cnt">수량</strong> 
				<strong class="com_custom_checkbox_price"> 구매금액 </strong>
			</p>
			
			<ul class="com_list_style1">
            
            <c:forEach var="i" begin="0" end="${cartList.size() -1 }" step="1">
			<c:set var="ct" value="${cartList[i] }" />
			<c:set var="gc" value="${productList[i] }" />
            <li>
                <div class="product_info_img">
                    <img src="./upload/${gc.st_img }" alt="${gc.st_name }">
                    <strong class="product_info_name">
                        ${gc.st_name }
                     </strong> 
                     <span class="product_info_origin">
                        ${gc.st_text } </span>
                </div>
                <div class="product_info_wrap">
                    <span class="product_info_one_price">
                        <fmt:formatNumber value="${gc.st_price }"/></span>
                </div>
                
                <div class="product_info_cnt_wrap">
                    ${ct.c_amount }
                </div>
                
                <span class="product_info_price">
                    ${gc.st_price * ct.c_amount }</span> 
            </li>
            </c:forEach>
            
        </ul>
        
			<table class="com_cart_total_price_wrap">
				<colgroup>
					<col style="width: 30%">
					<col style="width: 36%">
					<col style="width: 34%">
				</colgroup>
				<thead>
					<tr>
						<th>총 결제 예정금액</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<strong class="cart_total_price">${gc.st_price * ct.c_amount } </strong>
						</td>
					</tr>
				</tbody>
			</table>

		</div>
		
		<!-- 장바구니 리스트 구매상품 정보 -->
		
		<!-- 주문자 정보 확인 -->
		<div class="com_box_design_wrap">
			<strong class="com_box_design_title">주문자 정보 확인</strong>
			<ul class="com_box_design">
				<li><label for="user_info_name"> 아이디</label> 
				<input type="text" id="user_info_name" placeholder="이름" style="width: 128px" value="<%=session.getAttribute("mb_id") %>" readonly> 
				<label for="user_info_phonenum">휴대전화 번호</label>
					<input type="tel" id="user_info_phonenum" placeholder="휴대전화 번호" style="width: 228px" value="${member.mb_tel }"></li>
			</ul>
<!-- 			<p class="com_box_design_olist"> -->
				
<!-- 			</p> -->
		</div>
		<!-- 주문자 정보 확인 -->
		
		<!-- 결제 수단 -->
		
		<div class="com_box_design_wrap">
			<strong class="com_box_design_title">결제 수단</strong>
				<ul class="com_box_design radioCheck">
            		<li id="liCard">
                		<input type="radio" name="radio" class="com_custom_radio" id="payment_card">
                		<label for="payment_card">신용카드</label>
               		</li>
				</ul>
				
			<div class="com_agree_wrap">
				<p class="com_list_style1_title">
					<input type="checkbox" id="check00" class="com_custom_checkbox com_all_checker">
					<label for="check00">주문정보/결제 대행 서비스 약관 모두 동의</label>
				</p>
				
				
				<dl class="com_custom_checkbox1" style="display: block;">
					<dt>
						<input type="checkbox" id="check10" class="com_custom_checkbox com_all_particle_checker" data-required="true">
						<label for="check10"> 기프트콘 구매 동의</label>
					</dt>
					<dd>
						<p class="txtBox">상품 결제, CS처리 등을 이해 수신자로부터 AIM에 수신자의 휴대전화번호를 제공하는 것에 대한 적합한 동의를 받습니다.</p>
					</dd>
					<dt>
						<input type="checkbox" id="check11" class="com_custom_checkbox com_all_particle_checker" data-required="true" data-group="g0">
						<label for="check11">결제 대행 서비스 약관 모두 동의</label>
					</dt>
					<dd>
						<input type="checkbox" id="check20" class="com_custom_checkbox2" data-required="true" data-group="g0">
						<label for="check20">전자금융거래 이용약관</label>
							<a href="#none" onclick="javascript:fn_winopen('https://pay.cjsystems.co.kr/NewPayment/Apply/PGApply.htm', '400', '500'); return false;" target="_blank">
							전문확인</a>
					</dd>
					<dd>
						<input type="checkbox" id="check21" class="com_custom_checkbox2" data-required="true" data-group="g0"><label for="check21">개인정보 수집 이용약관</label>
						<a href="#none" onclick="javascript:fn_winopen('https://pay.cjsystems.co.kr/NewPayment/Apply/IDCollectApply.htm', '400', '500'); return false;" target="_blank">
						전문확인</a>
					</dd>
					<dd>
						<input type="checkbox" id="check22" class="com_custom_checkbox2" data-required="true" data-group="g0">
							<label for="check22">개인정보 제공 및 위탁안내</label>
							<a href="#none" onclick="javascript:fn_winopen('https://pay.cjsystems.co.kr/NewPayment/Apply/IDProvideApply.htm', '400', '500'); return false;" target="_blank">
							전문확인</a>
					</dd>
				</dl>
			</div>
			
			<div class="com_btn_wrap pT40">
				<a href="" class="btn_style0" onclick="requestPay()">결제하기</a> 
				<input type="submit" value="주문하기">
				<a href="" class="btn_style0" onclick="history.back();">돌아가기</a> 
			</div>
		</div>
		</div>


</form>





<!-- 관람권 & 기프트 카드 상품 조회 페이지  -->
<%-- ${productList } --%>
<%-- ${cartList } --%>
<article>
	<h1>상품 구매하기</h1>
	<c:set var="size" value="${cartList.size()+1 }" />
	<!-- 수업시간에는 -1으로 하던데 내가 하니까 계속 하나 잘려서 그냥 +1했음 나중에 수정 -->
	<c:set var="col" value="3" />
	<c:set var="row" value="${ Math.ceil(size%col) }" />
	<c:set var="num" value="0" />
<div>
	<table>
			<tr>
				<td> 번호 </td>
<!-- 			<td> 이미지 </td> -->
				<td> 상품명 </td>
				<td> 상품가격 </td>
				<td> 수량 </td>
				<td> 총 금액 </td>
				<td> 관리 </td>
			</tr>
		<c:forEach var="i" begin="0" end="${cartList.size() -1 }" step="1">
			<c:set var="ct" value="${cartList[i] }" />
			<c:set var="gc" value="${giftcardList[i] }" />
			<tr>
				<td> ${ct.c_num } </td>
				<%-- 				<td><img src="./upload/${gc.image.split(',')[0] }" width="60" height="60"></td> --%>
				<td> ${gc.st_name } </td>
				<td> ${gc.st_price } </td>
				<td> ${ct.c_amount } </td>
				<td> ${gc.st_price * ct.c_amount } </td>
				<td><a href="./CartDeleteAction.ct?c_num=${ct.c_num }">삭제</a></td>
			</tr>
		</c:forEach>
		
			<tr>
		<th colspan="8">
		  <h3>주문자 정보</h3>
		</th>
	<tr>
	  <td colspan="8">
	     <h2>아이디 : <%=session.getAttribute("mb_id") %></h2>
	  </td>
	</tr>
	<tr>
	  <td colspan="8">
	     <h2>연락처 : <input type="text" name="o_tel" value=""></h2> <!-- 아 연락처를 어쩌지 -->
	  </td>
	</tr>
	<tr>

	<tr>
		<th class="ttitle" colspan="8">
		  <h3>결제 정보</h3>
		</th>
	</tr>

	  <td colspan="2">
	     <input type="radio" name="o_pay" value="신용카드"> 신용카드
	  </td>
	  <td colspan="2">
	     <input type="radio" name="o_pay" value="카카오페이"> 카카오 페이
	  </td>
	  <td colspan="2">
	   <input type="radio" name="o_pay" value="네이버페이"> 네이버 페이
	  </td>
	
		
	</table>
</div>
<div>
	<input type="submit" value="주문하기"> 
	<input type="reset" value="취소">
	</div>
</article>
</body>
</html>