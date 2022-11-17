<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		 ${memberDTO }
	<article>
		<h1>${sessionScope.id }님의 장바구니</h1>
		<c:set var="size" value="${cartList.size()+1 }" />
		<!-- 수업시간에는 -1으로 하던데 내가 하니까 계속 하나 잘려서 그냥 +1했음 나중에 수정 -->
		<c:set var="col" value="3" />
		<c:set var="row" value="${ Math.ceil(size%col) }" />
		<c:set var="num" value="0" />
		<div>
			<table>
					<tr>
						<td> 번호 </td>
<!-- 					<td> 이미지 </td> -->
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
			</table>
		</div>
		<div>
			<input type="button" value="구매하기" onclick="location.href='./OrderStart.or';"> 
			<input type="button" value="계속 쇼핑하기" onclick="location.href='./GiftcardList.st';"> <!-- main으로 연결해야함 -->

		</div>
	</article>
</body>
</html>
</html>