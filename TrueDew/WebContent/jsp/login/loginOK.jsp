<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

</head>
<body>
	<form name="loginf" action="LoginController">
		<table>
			<tr>
	
				
				<td id="loginoktd" ><a href="MemberUpdateController"> ${sessionScope.loginMember.td_member_id }환영합니다.</a></td>
			<td></td>
				<td class="loginoktd1"><a href="LogoutController"><img src="img/logout.png" class="logimg"></a></td>
				
				<td>&nbsp;&nbsp;<a href="JoinController"><img src="img/join.png" class="logimg"></a></td>
				<td>&nbsp;&nbsp;<a href="QnaController"><img src="img/qna.png" class="logimg"></a></td>
				
				<td>&nbsp;&nbsp;<a href="#"><img src="img/research.png" class="logimg"></a></td>
			</tr>
		</table>
	</form>
</body>
</html>