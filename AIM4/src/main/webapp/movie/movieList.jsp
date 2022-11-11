<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재상영작</title>

</head>
<body>
<!-- 상위 배너 -->
<jsp:include page="../inc/topbanner.jsp"/>
<!-- 헤더/네비 -->
<jsp:include page="../inc/login_nav_bar.jsp" />
<br><br><br><br><br><br><br><br><br><br><br><br>
<table border="1">
	<tr>
		<td>포스터</td>
		<td>영화명</td>
		<td>관람등급</td>
		<td>예매율</td>
	</tr>	
	
 <c:forEach items="${movieList }" var="movie" >
 
  <tr>
    <td>포스터</td>
    <td>${movie.get("movieNm") }</td>
    <td>관람등급</td>
    <td>예매율</td>
  </tr> 
 
 </c:forEach>
</table>


	


<a href="#">예매하기</a>
<a href="./MovieInfo.mv">상세정보</a>

<!-- 약관 -->
<jsp:include page="../inc/footer.jsp" />
</body>
</html>