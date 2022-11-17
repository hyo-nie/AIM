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
<script src="jquery-3.6.1.js"></script>
<!-- 제이쿼리 바꿀 예정 -->
<script type="text/javascript">




</script>
</head>
<body>


	<!-- 각종 요소 -->
	<jsp:include page="../inc/include.jsp"/>
	

	<!-- 헤더/네비 -->
	<jsp:include page="../inc/nav_bar.jsp"/>


	<div class="category_product_list_wrap">
	     <strong class="category_product_list_title"> STORE
	    	<span>All In Movie, 영화의 모든 것</span></strong>
	    	<!-- 여기에 store_main_popcorn 이미지를 넣을까 생각만 해봄.... -->     
	    	<span><src href=""></span>
  	</div>
  	
  	
  	<div class="category_product_wrap">
  		<c:set var="size" value="3"/>	<!-- 3개씩 보이게 -->
		<c:set var="num" value="0"/>
  	
		<ul class="category_product_list">
	  		<!-- 추천상품 파트 -->
	        <li>
	          <strong class="category_product_title">추천상품
	          <a href="./StoreRcmd.st" class="btn_category_product">더보기</a>
	          </strong>          
	          
	          <ul class="category_product_inner_list">
	          	<li class=" ">
					<a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100253" class="btn_category_product">              
					<span class="best_product_img_wrap">
						<img src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/16094706927780.jpg" alt="CGV 영화관람권"></span>              
					<span class="best_product_text_wrap">                 
						<span class="best_product_text_title">CGV 영화관람권</span>                  
						<span class="best_product_text_name">즐거운 경험은 CGV에서!</span>                  
						<span class="best_product_sale_price_wrap">                  
						<span class="store_deatail_source_price">12,000</span>                  
					</span>
	              	</span>
	          		</a>
	          	</li>
	          </ul>
			</li>
		</ul>
	          
	          <br><br>
	          
	  	<ul class="category_product_list">
	  		<!-- 영화관람권 / 기트프카드 파트 -->
	        <li>
	          <strong class="category_product_title">영화관람권 / 기프트카드
	          <a href="./GiftcardList.st" class="btn_category_product">더보기</a> </strong>          
	          
	          <ul class="category_product_inner_list">   
	             <c:forEach var="i" begin="1" end="3" step="1">
		        	<c:if test="${num < size}">
		        	<c:set var="giftlist" value="${gc_list[i] }"/>
			          <li class=" ">
							<a href="./GiftcardDetail.st?st_num=${giftlist.st_num }" class="btn_category_product">              
							<span class="best_product_img_wrap">
								<img src="./assets/img/콤보.PNG" alt="${giftlist.st_img }"></span>  
								<!-- 콤보.PNG 이미지는 임시로 넣음! 추후 ${giftlist.st_img}로 변경 예정! --> 
								           
							<span class="best_product_text_wrap">                 
								<span class="best_product_text_title">${giftlist.st_name }</span>                  
								<span class="best_product_text_name"></span>                  
								<span class="best_product_sale_price_wrap">                  
								<span class="store_deatail_source_price"><fmt:formatNumber value="${giftlist.st_price}"/></span>                  
							</span>
			              </span>
			          </a>
			          </li>
			       </c:if>
	          	</c:forEach>
			          </ul>
			          </li>
	          </ul>
	          
		 <br><br>
	      
	      <ul class="category_product_list">
	        <!-- 팝콘/음료/굿즈 파트 -->
	        
			  <li>
			    <strong class="category_product_title">팝콘/음료/굿즈
			    	<a href="./PopcornList.st" class="btn_category_product">더보기</a> </strong>  
			          <!-- giftstore.css 517-->
			             
			    <ul class="category_product_inner_list">      
			      <c:forEach var="i" begin="1" end="3" step="1">
		        	<c:if test="${num < size}">
		        	<c:set var="poplist" value="${pop_list[i] }"/>
			          <li class=" ">
							<a href="./PopcornDetail.st?st_num=${poplist.st_num }" class="btn_category_product">              
							<span class="best_product_img_wrap">
								<img src="./assets/img/콤보.PNG" width="300" alt="${poplist.st_img }"></span>     
								<!-- 콤보.PNG 이미지는 임시로 넣음! 추후 ${poplist.st_img}로 변경 예정! -->         
	
							<span class="best_product_text_wrap">                 
								<span class="best_product_text_title">${poplist.st_name }</span>                  
								<span class="best_product_text_name"></span>                  
								<span class="best_product_sale_price_wrap">                  
								<span class="store_deatail_source_price"><fmt:formatNumber value="${poplist.st_price }"/></span>                  
							</span>
			              </span>
			          </a>
			          </li>
			       </c:if>
	          	</c:forEach>
			          </ul>
	
			  </li>

      </ul>
          
          
	</div>
	
	
	
	<!-- 약관 -->
	<jsp:include page="../inc/footer.jsp" />




</body>
</html>