<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세정보</title>
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
    <td>총관람객수</td>
    <td>장르</td>
    <td>개봉날짜</td>
    <td>상영시간</td>
    <td>감독</td>
    <td>배우</td>
    <td>줄거리</td>
  </tr>

  <tr>
   <td>${dto.poster }</td>
   <td>${dto.movieNm }</td>
   <td>${dto.watchGradeNm }</td>
   <td>${dto.bookRating }</td>
   <td>${dto.audiAcc }</td>
   <td>${dto.genreNm }</td>
   <td>${dto.openDt }</td>
   <td>${dto.showTm }</td>
   <td>${dto.directors}</td>
   <td>${dto.actors }</td>
   <td>${dto.contents }</td>
  </tr>
</table>

<br><br>
<input type="button" value="관람평" onclick="location.href='./ReviewList.mv?movieCd=${dto.movieCd}';">

<!-- 약관 -->
<jsp:include page="../inc/footer.jsp" />


</body>
</html>