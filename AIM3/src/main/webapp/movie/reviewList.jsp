<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관람평</title>
</head>
<body>

<!-- 상위 배너 -->
<jsp:include page="../inc/topbanner.jsp"/>
<!-- 헤더/네비 -->
<jsp:include page="../inc/login_nav_bar.jsp" />


<br><br><br><br><br><br><br><br><br><br><br><br>

<table>
  <tr>
    <td>리뷰번호</td>
    <td>리뷰내용</td>
    <td>작성날짜</td>
    <td>영화코드</td>
    <td>작성자</td>
  </tr>

  <c:forEach var="dto" items="${reviewListAll }">
	  <tr>
	    <td>${dto.reviewNo }</td>
	    <td>${dto.review }</td>
	    <td>${dto.date }</td>
	    <td>${dto.movieCd }</td>
	    <td>${dto.mb_id }</td>
	  </tr>
  </c:forEach> 
</table>


</body>
</html>