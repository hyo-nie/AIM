<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AIM - ALL IN MOVIE</title>
<link href="./assets/css/giftstore.css" rel="stylesheet" type="text/css">
<script src="jquery-3.6.1.js"></script>
</head>
<body>
	<!-- 관람권 & 기프트 카드 상품 조회 페이지  -->
	<%-- ${giftcardList } --%>
	<%-- ${cartList } --%>
<%-- 	${memberDTO } --%>
${orderList}
	<article>
		<h1>주문목록</h1>
		<table>
		<tr>
			<th class="ttitle" colspan="8">주문 상세내역</th>
		</tr>
					<tr>
						<th class="">주문번호</th>
						<th class="">상품명</th>
						<th class="">결제방법</th>
						<th class="">주문금액</th>
						<th class="">주문일시</th>
<!-- 						<th class="">환불여부</th> -->
					</tr>
					
<%-- 					<c:set var="refund" value="환불가능"/>					 --%>
					<c:forEach var="dto" items="${orderList}" >
<!-- 					status 상태 계산하기 -->
<%-- 					<c:choose> --%>
<%-- 						<c:when test="${dto.o_refund == 0 }"> --%>
<%-- 							<c:set var="refund" value="환불불가"/>	 --%>
<%-- 						</c:when> --%>
<%-- 						<c:when test="${dto.o_refund == 1 }"> --%>
<%-- 							<c:set var="refund" value="환불가능"/>	 --%>
<%-- 						</c:when>																 --%>
<%-- 					</c:choose> --%>
					
					<tr>
						<td><a href="./OrderDetail.or?o_cnum=${dto.o_cnum }">${dto.o_cnum }</a></td>
						<td>${dto.o_name }</td>
						<td>${dto.o_pay }</td>
						<td><fmt:formatNumber value="${dto.o_sum }"/>원</td>
						<td>${dto.o_pdate }</td>
<%-- 						<td>${dto.o_refund}</td>  --%>
					</tr>
				</c:forEach>
			</table>
		<div>
			<input type="button" value="돌아가기" onclick="location.href='./Main.aim';"> <!-- main으로 연결해야함 -->

		</div>
	</article>
</body>
</html>