<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서면극장</title>
<!-- 각종 요소 -->
<jsp:include page="../inc/include.jsp" />
<!-- 상위 배너 -->
<jsp:include page="../inc/topbanner.jsp" />
<!-- 헤더/네비 -->
<jsp:include page="../inc/nav_bar.jsp" />
</head>

<!-- bxslider 테스트 -->
<script>
	$(document).ready(function() {
		$('.slider').bxSlider();
	});
</script>

</head>
<body>
<jsp:include page="./bxslidertest.jsp"/>





	<!-- 약관 -->
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>