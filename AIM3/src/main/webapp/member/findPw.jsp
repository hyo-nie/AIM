<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��й�ȣ ã��</title>
</head>
<body>
	<script>
		function check() {
			if (document.fr.id.value == "") {
				alert('���̵� �Է��ϼ���!');
				document.fr.mb_id.focus();
				return;
			}

			if (document.fr.tel.value == "") {
				alert('��ȭ��ȣ�� �Է��ϼ���!');
				return;
			}

		}
	</script>


	<!-- ���� ��� -->
	<jsp:include page="../inc/include.jsp" />
	<!-- ���� ��� -->
	<jsp:include page="../inc/topbanner.jsp" />
	<!-- ���/�׺� -->
	<jsp:include page="../inc/nav_bar.jsp"></jsp:include>

	<!-- ��������Ƽ� �ӽù����Դϴ� -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- ��������Ƽ� �ӽù����Դϴ� -->


	<h1 align="center">��й�ȣ ã��</h1>
	<br>

	<fieldset>
		<div align="center">
			<form action="./FindPwAction.aim" method="post" name="fr"
				onSubmit="check()">
				<div>
					�� �� �� : <input type="text" name="mb_id" placeholder="���̵� �Է��ϼ���."
						required="required">
				</div>
				<br>
				<div>
					��ȭ��ȣ : <input type="text" name="mb_tel" placeholder="��ȭ��ȣ�� �Է��ϼ���."
						required="required">
				</div>
				<br>
				<div>
					<input type="submit" value="��й�ȣ ã��"> <input type="button"
						name="cancle" value="���ư���" onclick="history.back();">
				</div>
			</form>
		</div>
	</fieldset>
	<!-- ��� -->
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>