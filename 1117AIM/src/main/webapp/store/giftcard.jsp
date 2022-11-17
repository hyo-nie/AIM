<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AIM - ALL IN MOVIE</title>
<link href="./assets/css/giftstore.css" rel="stylesheet" type="text/css">

</head>
<body>

	<!-- 각종 요소 -->
	<jsp:include page="../inc/include.jsp" />

	<!-- 헤더/네비 -->
	<jsp:include page="../inc/nav_bar.jsp"></jsp:include>

<%-- ${Giftcard} --%>
		
		
		
		<div id="contents" class="gift_store">
		
		<div class="category_product_list_wrap">
			<strong class="category_product_list_title">
				기프트카드 / 관람권
			</strong>
		
		<c:set var="size" value="${Giftcard.size() }"/>
		<c:set var="col" value="4"/>
		<c:set var="row" value="${Math.ceil(size/col)}"/>
		<c:set var="num" value="0"/>		
		
			<ul class="com_list_style">
			<c:forEach begin="1" end="${row }" step="1">
				<c:forEach var="i" begin="1" end="${col }" step="1">
					<c:if test="${num < size }">
					<c:set var="giftcard" value="${Giftcard[num] }"/>
						<li class="">
							<a href="./GiftcardDetail.st?st_num=${giftcard.st_num}" class="btn_category_product"> 
							<span class="com_list_img_wrap">
								<img src="${giftcard.st_img }" alt="${giftcard.st_name }"></span> 
								<span class="com_list_text_wrap"> 
								<span class="com_list_text_title">${giftcard.st_name }</span> 
								<span class="com_list_text_name">${giftcard.st_text }</span> 
								<span class="com_list_sale_price_wrap"> 
								<span class="store_deatail_source_price"><fmt:formatNumber value="${giftcard.st_price }"/>원</span>
								</span>
								</span>
							</a> 
						</li>
					<c:set var="num" value="${num+1}"/>
					</c:if>
				</c:forEach>
			</c:forEach>
			</ul>
			<input type="button" value="상품등록" onclick="location.href='./AdminStoreAdd.ad';">
			<input type="button" value="상품리스트" onclick="location.href='./AdminStoreList.ad';">
			
			<!-- css적용 추후 적용할 예정! admin(관리자)만 볼 수 있도록 제어할 예정 -->
		</div>
</div>


	<!-- 약관 -->
	<jsp:include page="../inc/footer.jsp" />

</body>
</html>