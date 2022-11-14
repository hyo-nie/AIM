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
	
	<c:if test=""></c:if>
	<c:forEach var="movieDTO" items="${movieList }">
		<li class="">
			<a href="#none">
				<div class="group_infor">
					<div class="bx_tit">
						<span class=
							<c:if test="${movieDTO.watchGradeNm.equals('12세이상관람가') }">
								"ic_grade gr_12"
							</c:if>
							<c:if test="${movieDTO.watchGradeNm.equals('15세이상관람가') }">
								"ic_grade gr_15"
							</c:if>
							<c:if test="${movieDTO.watchGradeNm.equals('18세이상관람가') }">
								"ic_grade gr_18"
							</c:if>
							<c:if test="${movieDTO.watchGradeNm.equals('전체관람가') }">
								"ic_grade gr_all"
							</c:if>>
						</span>
						<strong class="tit">${movieDTO.movieNm }</strong>
					</div>
				</div>
			</a>
		</li>
	</c:forEach>
</body>
</html>