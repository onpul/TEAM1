<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript">
	$(function()
	{
		$("#searchBtn").click(function()
		{
			alert("LetterSendForm2.jsp가 서브창으로 열리는 버튼");
		})
		$("#submitBtn").click(function()
		{
			// alert()뜨고 기존 LetterList.jsp로 돌아가는 버튼
			alert("전송이 완료되었습니다.");
		});
		
		$("#notSaveBtn").click(function()
		{
			// 사용자 응답을 받는 형태로 변경 예정.(확인 / 취소)
			alert("작성하신 내용은 저장되지 않습니다. 정말로 취소하시겠습니까?");
		});
		
	});
</script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<head>
<meta charset="UTF-8">
<title>LetterSendForm.jsp</title>
</head>
<body>
<!-- 쪽지 생성 폼 -->
<!-- LetterSendForm.jsp -->
<div>
	<form action="">
		<div>
			받는 사람(ID)
			<input type="text" value="홍길동(hong@test.com)">
			<button class="btn btn-default" id="searchBtn">검색</button>
		</div>
		
		<div>
			<textarea rows="" cols="">쪽지내용 작성하는 곳</textarea>
		</div>
		
		<div>
			<!-- alert()뜨고 기존 LetterList.jsp로 돌아가는 버튼 -->
			<button type="submit" class="btn btn-primary" id="submitBtn">전송</button>
			<!-- 사용자 응답을 받는 형태로 변경 예정.(확인 / 취소) -->
			<button class="btn btn-default" id="notSaveBtn">취소</button>
		</div>
		
	</form>
</div>
</body>
</html>