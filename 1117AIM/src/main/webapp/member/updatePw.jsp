<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��й�ȣ ����</title>
</head>
<body>
	<script>
		function check(){
			if(document.fr.id.value == ""){
				alert('���̵� �Է��ϼ���!');
				document.fr.id.focus();
				return false;
			}
			if(document.fr.newPw.value == ""){
				alert('�� ��й�ȣ�� �Է��ϼ���!');
				document.fr.newPw.focus();
				return false;
			}
			if(document.fr.newPw2.value == ""){
				alert('�� ��й�ȣ�� �Է��ϼ���!');
				document.fr.newPw2.focus();
				return false;
			}
			
			if(document.fr.newPw.value != document.fr.newPw2.value){
				alert('��й�ȣ�� ��ġ���� �ʽ��ϴ�!');
				return false;
			}
			
			alert('��й�ȣ�� ����Ǿ����ϴ�!');			
		}
	</script>
	
	
	
	<!-- ���� ��� -->
	<jsp:include page="../inc/include.jsp" />

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
	
	<h1 align="center">��й�ȣ ����</h1><br>
	
	
	<fieldset>
		<div align="center">
	    <form action="./UpdatePwAction.aim" method="post" name="fr" onSubmit="return check()">			  
	    	<div>
	    		<input type="text" name="id" placeholder="���̵� �Է��ϼ���.">
	    	</div> 
	    	<br>
			<div>
				<input type="password" name="newPw" placeholder="����й�ȣ�� �Է��ϼ���.">
			</div>        	
			<br>
			<div>
				<input type="password" name="newPw2" placeholder="�ٽ� ����й�ȣ�� �Է��ϼ���.">
			</div>      
			<br>
			<div>
			<input type="submit" value="��й�ȣ ����">
			</div>  	
		</form>
		</div>
	</fieldset>

</body>
</html>