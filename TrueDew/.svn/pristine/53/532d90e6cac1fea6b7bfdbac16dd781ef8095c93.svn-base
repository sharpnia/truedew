<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/join.css">
</head>
<body>
	<form action="MemberUpdateController" name="updateForm" method="post"
		onsubmit="return updateCheck();">
		<table id="jointable" border="2px">
			<tr id="jointr1">
				<td colspan="2"><a><img id="mainimg" src="img/titimg.png"></a>
				<p>
						<img id="mainimg" src="img/membership.png"></td>
			</tr>
			<tr>
				<td colspan="2" class="joinb"></td>
			</tr>
			<tr class="jointr">
				<td><a><img src="img/id1.png" class="img2"></a></td>
				<td><input type="hidden"
					value="${sessionScope.loginMember.td_member_id }"
					name="td_member_id">
					${sessionScope.loginMember.td_member_id }</td>
			</tr>
			<tr class="jointr">
				<td><a><img src="img/pw11.png" class="img2"></a></td>
				<td><input name="td_member_pw" class="inputbox"
					placeholder="PW를 입력해주세요"></td>
			</tr>
			<tr class="jointr">
				<td><a><img src="img/pwc.png" class="img2"></a></td>
				<td><input name="td_member_pw2" class="inputbox"
					placeholder="PW를 확인입력해주세요"></td>
			</tr>
			<tr class="jointr">
				<td><a><img src="img/name2.png" class="img2"></a></td>
				<td>${sessionScope.loginMember.td_member_name }</td>
			</tr>
			<tr class="jointr">
				<td><a><img src="img/e.png" class="img2"></a></td>
				<td><input name="td_member_email" class="inputbox2"
					placeholder="EMail">@ <input name="td_member_email2"
					class="inputbox2" placeholder="입력해주세요"></td>
			</tr>
			<tr class="jointr">
				<td><a><img src="img/addr.png" class="img2"></a></td>
				<td><input name="td_member_addr" class="inputbox"
					placeholder="주소 입력해주세요"></td>
			</tr>
			<tr class="jointr">
				<td><a><img src="img/pnumber.png" class="img2"></a></td>
				<td>${sessionScope.loginMember.td_member_pn }</td>
			</tr>
			<tr class="jointr">
				<td><a><img src="img/pno.png" class="img2"></a></td>
				<td><select name="td_member_phone1" class="inputbox2"><option>010</option>
						<option>011</option>
						<option>017</option>
						<option>018</option>
						<option>019</option></select> -<input name="td_member_phone2"
					class="inputbox2">-<input name="td_member_phone3"
					class="inputbox2"></td>
			</tr>
			<tr>
				<td colspan="2" class="joinb"></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><a href="#"
					onclick="document.updateForm.submit();"><img src="img/ok2.png"
						style="height: 60px;"></a>

					</form>
					<form action="MemberDeleteController" name="deleteForm">
						<input type="hidden"
							value="${sessionScope.loginMember.td_member_id }"> <a
							href="#" onclick="document.deleteForm.submit();"><img
							src="img/leave.png" style="height: 60px;"></a></td>
			</tr>
	</form>
		</table>
</body>
</html>