<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>AIM - ����� ��ǰ ����Ʈ</title>
<link href="./assets/css/common.css" rel="stylesheet" type="text/css">
<link href="./assets/css/default.css" rel="stylesheet" type="text/css">
</head>
<body>

	<%-- ${adminStoreList } --%>
	<!-- ���� Ȯ�� �Ϸ� -->

	<div id="contents" class="contents_event_home">
		<div class="title_top">
			<h2 class="tit">����� ��ǰ ����Ʈ</h2>
		</div>
	</div>

	<table class="tbl_list text_c">
		<caption>����� ��ǰ ����Ʈ</caption>
		<colgroup>
			<col style="width: 10%;">
			<col style="width: 15%;">
			<col style="width: auto;">
			<col style="width: 15%;">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">��ȣ</th>
				<th scope="col">ī�װ�</th>
				<th scope="col">�̹���</th>
				<th scope="col">��ǰ��</th>
				<th scope="col">����</th>
				<th scope="col">����</th>
				<th scope="col">����</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="dto" items="${adminStoreList}">
				<tr>
					<td>${dto.st_num}</td>
					<td>${dto.category_name }</td>
					<td>
						<img src="./upload/${dto.st_img }">
					</td>
					<td>${dto.st_name }</td>
					<td>
						<fmt:formatNumber value="${dto.st_price }"/>��
					</td>
					<td>${dto.st_text }</td>
					<td>
						<a href="./AdminStoreModify.ad?st_num=${dto.st_num }">����</a>
						<a href="./AdminStoreDel.ad?st_num=${dto.st_num }">����</a>
					</td>
				</tr>
			</c:forEach>
			
		</tbody>
	</table>


		<!-- ����¡ ó���� ���� ������ ���� -->


</body>
</html>