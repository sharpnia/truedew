<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	function gogo() {
		document.f.submit();
	}
</script>
</head>
<body>
	<form action="DogItemDetailController" name="f">
		<table border="1px">
			<tr>
				<td style="height:30px;width: 800px">���̵� ��¥</td>
			</tr>
			<tr>
				<td style="height:140px;">����</td>
			</tr>
			<tr>
				<td style="height:30px;"><button onclick="gogo()">�۾���</button></td>
			</tr>
		</table>
	</form>
	<hr>
	<table border="1px">
		<tr>
			<td style="height:30px;width: 800px">���̵� ��¥</td>
		</tr>
		<tr>
			<td style="height:140px;">����</td>
		</tr>
		<tr>
			<td style="height:30px;"><button onclick="gogo()">����</button> &nbsp;<button onclick="gogo()">����</button></td>
		</tr>
	</table>
	<table border="1px">
		<tr>
			<td style="height:30px;width: 800px">���̵� ��¥</td>
		</tr>
		<tr>
			<td style="height:140px;">����</td>
		</tr>
		<tr>
			<td style="height:30px;"><button onclick="gogo()">����</button> &nbsp;<button onclick="gogo()">����</button></td>
		</tr>
	</table>
</body>
</html>