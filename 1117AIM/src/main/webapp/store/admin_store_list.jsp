<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>AIM - 스토어 상품 리스트</title>
<link href="./assets/css/common.css" rel="stylesheet" type="text/css">
<link href="./assets/css/default.css" rel="stylesheet" type="text/css">
</head>
<body>

	<%-- ${adminStoreList } --%>
	<!-- 정보 확인 완료 -->

	<div id="contents" class="contents_event_home">
		<div class="title_top">
			<h2 class="tit">스토어 상품 리스트</h2>
		</div>
	</div>

	<table class="tbl_list text_c">
		<caption>스토어 상품 리스트</caption>
		<colgroup>
			<col style="width: 10%;">
			<col style="width: 15%;">
			<col style="width: auto;">
			<col style="width: 15%;">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">카테고리</th>
				<th scope="col">이미지</th>
				<th scope="col">상품명</th>
				<th scope="col">가격</th>
				<th scope="col">구성</th>
				<th scope="col">관리</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="dto" items="${adminStoreList}">
				<tr>
					<td>${dto.st_num}</td>
					<td>${dto.category_name }</td>
					<td>
						<img src="./upload/${dto.st_img }">
					</td>
					<td>${dto.st_name }</td>
					<td>
						<fmt:formatNumber value="${dto.st_price }"/>원
					</td>
					<td>${dto.st_text }</td>
					<td>
						<a href="./AdminStoreModify.ad?st_num=${dto.st_num }">수정</a>
						<a href="./AdminStoreDel.ad?st_num=${dto.st_num }">삭제</a>
					</td>
				</tr>
			</c:forEach>
			
		</tbody>
	</table>


		<!-- 페이징 처리는 추후 구현할 예정 -->


</body>
</html>