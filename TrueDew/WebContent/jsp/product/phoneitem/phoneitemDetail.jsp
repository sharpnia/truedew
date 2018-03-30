<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	function goPay() {
		location.href="PayController";
	}
</script>
</head>
<body>
	<table border="1px">
		<tr>
			<td><img src="img/titimg.png" style="height: 500px;width: 800px"></td>
		</tr>
		<tr>
			<td style="height: 50px;">폰케이스</td>
		</tr>
		<tr>
			<td style="height: 300px;">상세내용</td>
		</tr>
		<tr>
			<td style="height: 50px;"><button>장바구니 추가</button> &nbsp;<button onclick="goPay();">결제</button></td>
		</tr>
	</table>
</body>
</html>