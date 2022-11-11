<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<jsp:include page="../inc/include.jsp" />

</head>
<body>

<jsp:include page="../inc/nav_bar.jsp" />


	<br><br><br><br><br><br><br><br><br>
	
	<h1>adminMoiveInsertForm.jsp</h1>
	
	<br><br>
	
	
	
	
	
	
	<form action="./AdminMoiveInsertAction.mv" method="post">
		<table border="1">
			<tr>
				<th>순위</th>
				<th>제목</th>
				<th>포스터</th>
				<th>개봉일</th>
				<th>누적관객수</th>
			</tr>
			
			<c:forEach var="dto" items="${boxOfficeList }">
			<tr>
				<td>${dto.get("rank") }</td>
				<td>${dto.get("movieNm") }</td>
				<td>임시값</td>
				<td>${dto.get("openDt") }</td>
				<td>${dto.get("audiAcc") }</td>
			</tr>
			</c:forEach>
			
		</table>			
		<c:set var="i" value="1"></c:set>
		
		<c:forEach var="dto2" items="${boxOfficeList }">		
			<input type="hidden" name="movieCd${i }" value="${dto2.get('movieCd') }">	
			<c:set var="i" value="${i+1 }"></c:set>
		</c:forEach>
	
	
		<input type="submit" value="저장">
		<input type="button" value="취소" onclick="history.back();">
		
		
	</form>
	
	
	
	
	
</body>
</html>