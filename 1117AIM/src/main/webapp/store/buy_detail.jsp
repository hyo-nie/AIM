<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AIM - ALL IN MOVIE</title>
<link href="./assets/css/giftstore.css" rel="stylesheet" type="text/css">
<script src="jquery-3.6.1.js"></script>
</head>
<body>
<article>
			<h1>주문 목록</h1>
			
				<table>
					<tr>
						<th class="ttitle" colspan="8">주문 상세내역</th>
					</tr>
					<tr>
						<th class="tno">상품명</th>
						<th class="ttitle">사이즈</th>
						<th class="twrite">색상</th>
						<th class="tdate">수량</th>
						<th class="tread">금액</th>
					</tr>
					
					<c:set var="totalSum" value="0"/>
					<c:forEach var="dto" items="${orderDetail}" >
						<tr>
							<td>${dto.o_name }</td>
							<td>${dto.o_amount }</td>
							<td>${dto.o_sum }</td>
						</tr>
						
						<c:set var="totalSum" value="${totalSum+dto.o_sum }"/>
					</c:forEach>
					
							<tr>
		   						<td colspan="2"> </td>
		   						<td colspan="3"> <h3>총 주문금액 : <fmt:formatNumber value="${totalSum }"/>원</h3> </td>
							</tr>
					
				</table>
			
		</article>
</body>
</html>