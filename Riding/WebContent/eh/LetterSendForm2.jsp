<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LetterSendForm2.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function()
	{
		$("#check").click(function()
		{
			// 주소처럼 처리하는 곳
			alert("밑에 체크박스에서 선택되면 여기 받는 친구에 문자열이 입력되는 AJAX처리/ 확인 누르면 LetterSendForm.jsp이동");
		});
		
		$("#allSelect").click(function()
		{
			alert("전체 선택되고 LetterSendForm.jsp에서 쪽지 받는 친구에 체리짱, 체리완료, 안녕체리 문자열이 입력됨.");
		});
		
		$("#SelectCancell").click(function()
		{
			alert("전체 해제되고 LetterSendForm.jsp 받는 대상 칸이 비워지는 형태");
		})
	});
</script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
</head>
<body>
<!-- 친구 검색 시 쓰는 페이지 서브창 용 -->
<!-- LetterSendForm2.jsp -->
<div>
	친구 목록
</div>

<div>
	<form action="">
		<div>
			<input type="text" placeholder="쪽지 받는 친구">
			<button class="btn btn-default" id="check">확인</button>
		</div>

		<!-- 위 text로 친구 검색하면 밑에 뜨는 거. -->		
		<div>
			친구 [ 3 ] 명
			<div>
				<label><input type="checkbox" name="친구">홍길동(hong@test.com)</label>
				<br />
				<label><input type="checkbox" name="친구">체리(cherry@test.com)</label>
				<br />
				<label><input type="checkbox" name="친구">on1(on1@test.com)</label>
			</div>
		</div>
		
		<div>
			<button class="btn btn-default" id="allSelect">전체 선택</button>
			<button class="btn btn-default" id="SelectCancell">선택 해제</button>
		</div>
	</form>
</div>
</body>
</html>