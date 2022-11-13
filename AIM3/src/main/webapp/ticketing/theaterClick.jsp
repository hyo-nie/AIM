<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<c:forEach var="movieDTO" items="${movieList }">
		<li class="">
			<a href="#none">
				<div class="group_infor">
					<div class="bx_tit">
						<span class="ic_grade gr_12"></span>
						<strong class="tit">${movieDTO.movieNm }</strong>
					</div>
				</div>
			</a>
		</li>
	</c:forEach>
</body>
</html>