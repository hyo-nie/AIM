<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일자별 예매스케줄 구현 중입니다.</title>
<script src="../assets/css/jquery-3.6.1.js"></script>
<script src="../assets/css/jquery.bxslider.js"></script>
<link href="../assets/css/jquery.bxslider.css" rel="stylesheet"
	type="text/css">
	
	
	
<%--/////////////////////////////////////////////////////////////////////////// --%>

<%--                         작업중입니다.                                      --%>

<%--/////////////////////////////////////////////////////////////////////////// --%>	
	
	
	
	
	
	
	
	
	
	
	
<!-- bxslider 테스트 -->
<script>

// bxslider 동작 이벤트
$( document ).ready( function() {
    $( '.slider' ).bxSlider( {
//       auto: true, // 자동재생
//       pause: 2000, // 재생속도 1000 = 1초
//      autoHover: true, // 마우스 닿을 시 멈춤
      minSlides: 10,
      maxSlides: 10,
      slideWidth: 800,
      slideMargin: 5,
      infiniteLoop: false // 무한루프 제거
      // hideControlOnEnd: true 
    } );
  } );
</script>
<!-- <script type="text/javascript">

// 날짜함수 저장
	let today = new Date();   

	let year = today.getFullYear(); // 년도
	let month = today.getMonth() + 1;  // 월
	let date = today.getDate();  // 날짜
	let day = today.getDay();  // 요일
	// 일요일이 0, 월요일이1, 토요일이 6으로 표현

	document.write(year + '/' + month + '/' + date)
	document.write('<br>')
	document.write(day);  
</script>  -->


</head>








<c:set var="today" value="<%=new Date() %>" />
<fmt:formatDate pattern="yy" value="${today }" var="year" />
<fmt:formatDate pattern="MM" value="${today }" var="mon" />
<fmt:formatDate pattern="dd" value="${today }" var="day" />
 ${today }<br>
 ${year }<br>
 ${mon }<br>
 ${day }



<%-- 1단계 일자출력 --%>
<body>
<h1> 1단계 !!</h1><br>
	<div class="bxslider">
		<div class="slider">
			<c:forEach var="i" begin="1" end="31" step="1">
				<div>
					<a href="">${i }일</a>
				</div>
			</c:forEach>
		</div>
	</div>


	<hr>

	<%-- 2단계 현재일자와 비교하여 현날짜부터 31일까지 출력 --%>
	<h1>2단계!!</h1><br>
	<div class="bxslider">
		<div class="slider">
			<c:forEach var="i" begin="${day }" end="31" step="1">
				<div>
					<a href="">${i }일</a>
				</div>
			</c:forEach>
		</div>
	</div>
	<hr>
</html>
<!-- https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=euijun54&logNo=221683368003 -->
<!-- https://blog.naver.com/PostView.nhn?blogId=javaking75&logNo=220145998991 -->
		<%-- 3단계 월별 마지막일자 계산해서 출력하기 --%>

