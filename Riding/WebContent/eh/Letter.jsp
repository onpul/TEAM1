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
		$("#sendLetter").click(function()
		{
			//alert() 뜨고 LetterSendForm.jsp로 이동하는 액션처리
			alert("LetterSendForm.jsp로 이동합니다.");
		});
		
		$("#closeBtn").click(function()
		{
			alert("서브창 닫는 액션처리");
		});
		
		$("#deleteBtn").click(function()
		{
			// 사용자 응답을 받는 형태로 변경 예정.(확인 / 취소)
			alert("정말 삭제하시겠습니까?");
		});
		
	});
</script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<head>
<meta charset="UTF-8">
<title>Letter.jsp</title>
</head>
<body>
<!-- Letter.jsp -->
<!-- 쪽지 상세 내용 조회 -->
<!-- 서브창 형태로 열림. -->
<div>
	보낸 사람 : <span>홍길동</span>
</div>
<div>
	받은 시간 : <span>2022-05-21 21:29</span> 
</div>

<div>
	제목 : <span>안녕하세요.</span> 
</div>

<div>
	내용
	<br />
	<span>
		안녕하세요. 홍길동입니다.
	</span>
</div>

<div>
	<!-- 쪽지 보내기 페이지로 이동. -->
	<!-- LetterSendForm.jsp -->
	<button class="btn btn-primary" id="sendLetter">답장</button>
	
	<!-- 서브창 닫는 버튼 -->
	<button class="btn btn-default" id="closeBtn">닫기</button>
	
	<!-- 정말 삭제하겠냐고 물어보는 alert() 뜨기 -->
	<!-- 사용자 응답에 따라 삭제되었습니다 / 취소되었습니다. -->
	<button class="btn btn-default" id="deleteBtn">삭제</button>
</div>

<div>
	<span id="helpBlock" class="help-block">
	※누적된 쪽지가 100개를 초과하는 경우,
	가장 오래된 쪽지부터 자동으로 삭제됩니다.
	</span>
	
</div>
</body>
</html>