<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>AIM ����� ��ǰ ���</title>
<link href="./assets/css/common.css" rel="stylesheet" type="text/css">
<link href="./assets/css/default.css" rel="stylesheet" type="text/css">

</head>
<body>

	<!-- ī�װ� ���� ��ǰ�� ���� ����� �ϴ� �� ���� �� ���� -->

	<%
		/* �α��� ����! ����� ��ǰ ��� �������� admin(������)�� ���� ���� */
			String id = (String) session.getAttribute("mb_id");
			if (id == null || !id.equals("admin")) {
				response.sendRedirect("./Login.aim");
			}
	%>
	
	<form action="./AdminStoreAddAction.ad" method="post" enctype="multipart/form-data">
	
	<div id="contents">
		<div class="title_top">
			<h2 class="tit">����� ��ǰ ���</h2>
		</div>
			<table class="tbl_form">
				<colgroup>
					<col style="width: 15%;">
					<col style="width: auto;">
				</colgroup>
			
	
		
			<tbody>
				<tr>
					<th scope="row" class="req1">ī�װ�</th>
					<td>
						<select title="ī�װ��� ����" name="category" id="iDdivisionCode">
							<option value="0" selected="selected">ī�װ� ����</option>
							<option value="1">����Ʈī��/������</option>
							<option value="2">����/����/����</option>
						</select>
					</td>
				</tr>
				
				
				<!-- select-option���� �Һз��� ���� ���� -->
				<!-- code_1�̸� ����Ʈī��� �������� option����, -->
				<!-- code_2�̸� ����, ����, �޺�, ��� option���� -->
				<tr>
					<th scope="row" class="req1">�Һз�</th>
					<td>
						<select name="category_name" id="iDdivisionCode">
							<option value="0" selected="selected">�Һз� ����</option>
							<option value="����Ʈī��">����Ʈī��</option>
							<option value="������">������</option>
							<option value="����">����</option>
							<option value="����">����</option>
							<option value="�޺�">�޺�</option>
							<option value="����">����</option>
						</select>
					</td>
				</tr>
				
				
					
				<tr>
					<th scope="row" class="req1">��ǰ��</th>
					<td>
						<input type="text" name="name">
						<div class="bx_file ">
							<div id="layerSelectCinema" class="layer_wrap ty3 layer_select_cinema" style="left: 0px; top: 0px;"></div>
							<div class="file_item"></div>
						</div>
					</td>
				</tr>
				<tr>
					<th scope="row" class="req1">����</th>
					<td>
						<input type="text" name="price"> ��
						<div class="bx_file ">
							<div id="layerSelectCinema" class="layer_wrap ty3 layer_select_cinema" style="left: 0px; top: 0px;"></div>
							<div class="file_item"></div>
						</div>
					</td>
				</tr>
				<tr>
					<th scope="row" class="req1">����</th>
					<td>
						<div class="bx_textarea">
							<input type="text" class="ty2 w_full" name="text" id="iDtitle">
						</div>
					</td>
				</tr>
				
				<tr>
					<th scope="row">÷������</th>
					<td>
						<div class="bx_file">
							<input type="file" id="file" name="img">
							<label class="" for="file">���ϼ���</label>
							<div class="file_item"></div>
						</div>
						<span class="txt_caution1 fl_r with_inp"> ��ǰ ��ǥ ������ ������ּ���.</span>
					</td>
				</tr>
				
			</tbody>
		</table>
		
			<div class="btn_btm_wrap">
				<a href="#none" class="btn_col3 ty6">���</a>
				<input type="submit" value="���" class="btn_col2 ty6">
			</div>
			
		</div>
	
	</form>


</body>
</html>