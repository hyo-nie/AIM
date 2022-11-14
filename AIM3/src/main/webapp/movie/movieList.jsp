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
  	<td>순위</td>
    <td>포스터</td>
    <td>영화명</td>
    <td>관람등급</td>
    <td>예매율</td>
  </tr> 
  
  <c:forEach var="movie" items="${movieList }" >
    <tr>
      <td>${movie.boxrank }</td>
      <td onclick="location.href='./MovieDetail.mv?movieCd=${movie.movieCd}';"><img src="${movie.poster }" width="200" height="300"></td>
      <td>${movie.movieNm }</td>
      <td>${movie.watchGradeNm }</td>
      <td>${movie.bookRating }</td>
      <td onclick="location.href='./Ticketing.tk?movieCd=${movie.movieCd}';">예매하기</td>
    </tr> 
   </c:forEach>
</table>




<!-- 약관 -->
<jsp:include page="../inc/footer.jsp" />
</body>
</html>