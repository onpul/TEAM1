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
		$("updateBtn").click(function()
		{
			alert("다시 MyInfoUpdateForm.jsp로 이동한다. 수정된 값을 가지고!");	
		});
		
		$("cancellBtn").click(function()
		{
			alert("다시 MyInfoUpdateForm.jsp로 이동한다. 기존 값을 가지고!");	
		});
	});
	
</script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<head>
<meta charset="UTF-8">
<title>OneWordUpdateForm.jsp</title>
</head>
<body>
<!-- 한마디 변경 폼-->
<!-- OneWordUpdateForm.jsp -->
<div>
	한마디 변경하기
</div>
<div>
	<!-- 기존 한마디가 작성되어있어야함. -->
	<form action="">
		<div>
			<input type="text" value="기존 한마디.">
		</div>
		
		<div>
			<button type="submit" class="btn btn-primary" id="updateBtn">선택하기</button>
			<button type="submit" class="btn btn-primary" id="cancellBtn">취소</button>
		</div>
	</form>
	
</div>


</body>
</html>