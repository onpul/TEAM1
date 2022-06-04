<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberSecession.jsp</title>
</head>
<body>
<!-- 회원 탈퇴 페이지 -->
<div>
	<form>
		회원 탈퇴
		<div>
			비밀번호 입력
			<input type="password">
			<button>입력</button> 
		</div>
	</form>
</div>
</body>
</html>