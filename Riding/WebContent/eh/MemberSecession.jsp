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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function()
	{
		$("#check").click(function()
		{
			// 사용자에게 응답 받아 처리하는 alert() (확인 / 취소)
			// 확인 입력 시, Main.jsp로 이동하고 비회원으로 세션 변경 → 탈퇴가 성공적으로 처리되었습니다 alert() 뜨게하기.
			// 취소 입력 시, MemberSecession.jsp에 남아있음 회원의 상태로. → 탈퇴가 취소되었습니다 alert() 뜨게하기.
			alert("정말로 탈퇴하시겠습니까? 탈퇴하면 3개월간 재가입이 불가능합니다.");
		});
	});
</script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
</head>
</head>
<body>
<!-- 회원 탈퇴 페이지 -->
<!-- MemberSecession.jsp -->
<div>
	<form>
		회원 탈퇴
		<div>
			비밀번호 입력
			<input type="password">
			<button class="btn btn-danger" id="check">입력</button> 
		</div>
	</form>
</div>
</body>
</html>