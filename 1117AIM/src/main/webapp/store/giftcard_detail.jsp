<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./assets/css/giftstore.css" rel="stylesheet" type="text/css">
<script src="jquery-3.6.1.js"></script>
<!-- 제이쿼리 버전 바꾸기! -->
<script type="text/javascript">
			
			// 자바스크립트, 제이쿼리 전부 다 다시 봐야함!
			function isCart(){
			// 장바구니 페이지 이동
			var isMove = confirm("장바구니 페이지로 이동할까요?");
			
			if(isMove){
				// 장바구니 페이지 이동
				alert(" 장바구니 페이지로 이동 ");
				document.fr.action="./CartAddAction.ct";
// 				?st_num="+${param.st_num}+"&st_name="${param.st_name}
				document.fr.isMove.value=isMove; // true
				document.fr.submit();
			} else{
				// 계속 쇼핑하기 이동
				alert(" 계속 쇼핑하기 !");
				
				// 장바구니 정보 전달&저장  ./CartAddAction.ct
				// + 쇼핑정보
				document.fr.action="./CartAddAction.ct";
				document.fr.isMove.value=isMove; // false
				document.fr.submit();
				
				}
			}// isCart()

		
</script>
</head>
<body>
<%-- ${dto } --%>
<article>
	<h1> 기프트카드 & 관람권 상세페이지 </h1>
	
	<form action="" method="post" name="fr">
		<input type="hidden" name="st_num" value="${dto.st_num }">	
		<input type="hidden" name="st_name" value="${dto.st_name }">	
		<input type="hidden" name="isMove" value="">
		<table border="1" id="">
		<tr>
		<td width="310">
			<img src="" width="300" height="300">
		</td>
		<td>
		    상품정보(구매옵션)<br>
		    <h2>상품명 : ${dto.st_name}</h2>
		    <h3>판매가격 <fmt:formatNumber value="${dto.st_price }"/> 원</h3>
		    <h3>구매수량 : <input type="number" name="c_amount" value="1"></h3>
		    <h3>상품정보 : ${dto.st_text }</h3>
		    <hr>
		    <h2> 총 가격 : <fmt:formatNumber value= "${dto.st_price * 1}"/>원</h2>
		    
		    <div class="category_product_detail_btn_wrap">
		  
<!--     		<a href="#" onclick="javascript:app.goLogin();return false;" class="btn_cart">장바구니</a>                -->
<!-- 			<a href="#" onclick="javascript:app.goLogin();return false;">구매하기</a>  -->
		    <a href="javascript: isCart();" class="btn_cart">[장바구니 담기]</a> 			
		    <a href="javascript: isOrder();">[바로 구매하기]</a>
		
		    </div>
		</td>
	</tr>
		
		</table>
	</form>
</article>
	
	<dl class="category_product_detail_dlist">         	
		<dt><b>이용안내</b></dt> 	
		 <dd>
			• CGV 기프트카드는 일정 금액만큼 구매·충전 후 CGV 온·오프라인에서 사용 가능한 충전형 선불 카드입니다.<br>
			• 스토어를 통해 원하는 금액(최대 10만원)만큼 충전해서 선물하실 수 있습니다.<br> • 구매 후 전송받으신
			기프트카드는,<br> - CGV 극장(일부 극장 제외)의 매점,매표,키오스크에서 사용할 수 있으며, 최소 100원
			이상 사용 가능합니다.<br> - CGV 홈페이지, 모바일웹, CGV 앱에서 결제수단으로 사용 가능하며, 포토티켓
			앱에서는 최소 100원 이상 사용 가능합니다.<br> - CGV 온라인에 등록되어 있는 카드의 경우, CGV
			모바일웹 또는 CGV 앱의 MY &gt; 관람권/카드 &gt; 기프트카드 메뉴의 카드 바코드를 통해서 사용할 수 있습니다.<br>
			• 기프트카드를 온라인에 등록하시는 경우,<br> - 모바일 : MY &gt; 관람권/카드 &gt; 기프트카드에서
			[카드 추가하기] 버튼 또는 [+] 아이콘 선택<br> - 홈페이지(PC) : ‘MyCGV &gt; 관람권/할인쿠폰
			관리 &gt; CGV기프트카드’에서 [CGV 기프트카드 등록] 버튼 선택<br> • 카드번호 1개당 1명의 계정에만
			온라인에 등록할 수 있습니다.<br> • 온라인 등록된 카드를 ‘해지하기’를 통해 해지한 경우 기프트카드 MMS를
			통해 전송된 ‘카드번호’ 및 ‘비밀번호(또는 PIN번호)’를 입력하여 재등록할 수 있으며, 카드번호 및 비밀번호를 분실한
			경우 재등록이 불가능합니다.<br> • 기프트카드의 유효기간은 구매 또는 최종 충전일로부터 5년입니다<br>
			&nbsp;
		 </dd>

		<dt><b>취소/환불</b></dt> 
		<dd>
			• CGV 온라인 스토어에서 구매한 기프트카드는 구매 후 14일 내 전액 구매(결제) 취소 가능합니다.<br> •
			단, 구매 후 기프트카드를 사용한 이력이 있을 경우 구매 결제 취소가 불가합니다<br> • CGV 온라인 스토어에서
			연결된 링크를 통해 구매한 ‘CJ 기프트카드’의 경우, CJ ONE 홈페이지(www.cjone.com) 또는
			모바일(m.cjone.com)를 통해 확인해 주시기 바랍니다.<br> • 결제취소/환불 방법<br> -
			결제취소는 모바일App,웹 &gt; MY &gt; 결제내역조회 &gt; 스토어 or 홈페이지 &gt; My CGV &gt;
			스토어 &gt; 결제내역의 해당 주문 상세내역에서 가능합니다.<br> - CGV 온라인에서 ‘충전’한 충전
			금액은기프트카드 충전 후 14일 내 전액 충전(결제) 취소 가능합니다.<br> - 단, 충전 취소 요청 시 해당
			기프트카드의 잔액이 충전한 금액보다 적을 경우 충전 결제 취소가 불가합니다.<br> - 잔액 환불은 최종
			구매(충전) 후 합계 잔액 기준 60% 이상 사용 시 신청 가능합니다.<br> - 단, 환불 금액은 구매액을
			기준으로 ‘구매한 금액’을 기준으로 사용한 비율에 따라 계산하여 남은 비율의 금액을 환불합니다.<br> • 수신자는
			선물받은 기프트카드의 수신거절을 수신일로부터 14일 이내에 요청할 수 있으며, 이 경우 구매자에게 취소 및 환불에 대한
			안내가 이루어집니다.<br> • 이용/환불 문의 : 나이스정보통신 고객센터(1644-9760), CJ ONE
			고객센터(1577-8888)<br> • 상담 가능 시간 : 평일 09:00~18:00, 토/일/공휴일 휴무
		</dd>
		<dd>
			• CGV 기프트카드는 일정 금액만큼 구매·충전 후 CGV 온·오프라인에서 사용 가능한 충전형 선불 카드입니다.<br>
			• 스토어를 통해 원하는 금액(최대 10만원)만큼 충전해서 선물하실 수 있습니다.<br> • 구매 후 전송받으신
			기프트카드는,<br> - CGV 극장(일부 극장 제외)의 매점,매표,키오스크에서 사용할 수 있으며, 최소 100원
			이상 사용 가능합니다.<br> - CGV 홈페이지, 모바일웹, CGV 앱에서 결제수단으로 사용 가능하며, 포토티켓
			앱에서는 최소 100원 이상 사용 가능합니다.<br> - CGV 온라인에 등록되어 있는 카드의 경우, CGV
			모바일웹 또는 CGV 앱의 MY &gt; 관람권/카드 &gt; 기프트카드 메뉴의 카드 바코드를 통해서 사용할 수 있습니다.<br>
			• 기프트카드를 온라인에 등록하시는 경우,<br> - 모바일 : MY &gt; 관람권/카드 &gt; 기프트카드에서
			[카드 추가하기] 버튼 또는 [+] 아이콘 선택<br> - 홈페이지(PC) : ‘MyCGV &gt; 관람권/할인쿠폰
			관리 &gt; CGV기프트카드’에서 [CGV 기프트카드 등록] 버튼 선택<br> • 카드번호 1개당 1명의 계정에만
			온라인에 등록할 수 있습니다.<br> • 온라인 등록된 카드를 ‘해지하기’를 통해 해지한 경우 기프트카드 MMS를
			통해 전송된 ‘카드번호’ 및 ‘비밀번호(또는 PIN번호)’를 입력하여 재등록할 수 있으며, 카드번호 및 비밀번호를 분실한
			경우 재등록이 불가능합니다.<br> • 기프트카드의 유효기간은 구매 또는 최종 충전일로부터 5년입니다<br>
			&nbsp;
		</dd>
	</dl>	
</body>
</html>