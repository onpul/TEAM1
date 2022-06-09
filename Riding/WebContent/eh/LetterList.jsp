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
			//alert("정말 삭제하시겠습니까?");
			var result = confirm("쪽지를 정말 삭제하시겠습니까?");
			
			if (result)
			{
				$("#form").submit();
				alert("삭제되었습니다.");
			}
			else
				alert("취소되었습니다.");
		});
		
		$("#writeBtn").click(function()
		{
			location.replace('Letter.jsp');
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
<div>
	<!-- 쪽지 리스트 조회 페이지 -->
	<!-- LetterList.jsp -->
	
	<div>
		<p>쪽지</p>
	</div>
	
	<div>
		<!-- Ajax 처리 필요 -->
		<select>
			<option selected="selected">전체 쪽지</option>
			<option>받은 쪽지</option>
			<option>보낸 쪽지</option>
		</select>
	</div>
	
	<div>
		<button type="button" class="btn btn-default" id="writeBtn">쪽지쓰기</button>
	</div>
	
	<div>
		<!-- letterDeleteController 필요!! -->
		<form action="" method="get" id="form">
			<table>
				<tr>
					<th></th>
					<th>보낸 사람</th>
					<th>제목</th>
				</tr>
				<!--                        Controller로 이동하도록 요청주소 변경 예정 -->
				<tr onclick="location.href='Letter.jsp?id=1'">
					<td>
						<input type="checkbox" name="letter" value="1">
					</td>
					<td>홍길동</td>
					<td>안녕하세요.</td>
				</tr>
				
				<!--                        Controller로 이동하도록 요청주소 변경 예정 -->
				<tr onclick="location.href='Letter.jsp?id=2'">
					<td>
						<input type="checkbox" name="letter" value="2">
					</td>
					<td>남주혁</td>
					<td>2521</td>
				</tr>
				
				<!--                        Controller로 이동하도록 요청주소 변경 예정 -->
				<tr onclick="location.href='Letter.jsp?id=3'">
					<td>
						<input type="checkbox" name="letter" value="3">
					</td>
					<td>홍체리</td>
					<td>2주남았네</td>
				</tr>
			</table>
		</form>
	</div>
	
	<div>
		<span>1 2 3</span>
	</div>
	
	<div>
		<button type="button" id="deleteBtn">삭제</button>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</div>
</body>
</html>