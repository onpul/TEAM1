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
<title>LetterList.jsp</title>
</head>
<body>
<!-- 쪽지 리스트 조회 페이지 -->
<!-- LetterList.jsp -->
<div>
	쪽지
</div>

<div>
	<select>
		<option>전체쪽지</option>
		<option>받은쪽지</option>
		<option>보낸쪽지</option>
	</select>
	
	<a href="">쪽지쓰기</a>
</div>

<div>
	보낸사람
	제목
</div>

<div>
	<form class="form-horizontal">
		<div>
			<label>
				<input type="checkbox" name="삭제대상" value="쪽지ID">
				<span>홍길동</span>
				<span>안녕하세요.</span>
			</label>
		</div>
		
		
		<div>
			<label>
				<input type="checkbox" name="삭제대상" value="쪽지ID">
				<span>임시완</span>
				<span>어쩌고</span>
			</label>
		</div>
		
		
		<div>
			<label>
				<input type="checkbox" name="삭제대상" value="쪽지ID">
				<span>자비스</span>
				<span>하이요</span>
			</label>
		</div>
		
		
		<span>1 2 3</span>
		<br />
		<button class="btn btn-default" id="deleteBtn">삭제</button>
	</form>
</div>
</body>
</html>