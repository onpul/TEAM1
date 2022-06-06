<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyInfoUpdateForm.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function()
	{
		$("#profilePhoto").click(function()
		{
			alert("profilePhotoUpdateForm.jsp 서브창이 뜨는 형태");
		});
		
		$("#oneWord").click(function()
		{
			alert("OneWordUpdateForm.jsp 서브창이 뜨는 형태");
		});
		
		$("#updateBtn").click(function()
		{
			// 현재 비밀번호는 필수입력값.
			// 사용자의 현재 비밀번호와 일치하는지 확인 후,
			// 일치하면 
			// 수정완료 알림 창 띄우기
			// MyPageMain.jsp로 이동
			
			// 일치 안하면 
			// alert("비밀번호가 일치하지 않습니다.")
			// 현재 비밀번호 칸을 clear 한 뒤, focus 두고
			// MyInfoUpdateForm.jsp에 남아있기
			alert("수정이 완료되었습니다.");
		});
		
		$("#cancellBtn").click(function()
		{
			// 사용자의 응답을 받아 처리하는 alert()띄우기 (확인 / 취소)
			alert("수정 사항은 저장되지 않습니다. 정말로 취소하겠습니까?");
		});
	});
</script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
</head>
<body>
<!-- 개인정보수정폼 페이지 -->
<!-- MyInfoUpdateForm.jsp -->


<!-- 맨 윗 줄 -->
<div>
<!-- 
	프로필 사진과 한마디는 해당 칸을 누르면
	선택하는 서브창이 열려서 거기서 선택한걸 가지고
	변경되는 ajax 처리.
-->
	<div id="profilePhoto">
		프로필 사진
	</div>
	
	<div id="oneWord">
		한마디
	</div>
</div>

<!-- 다음 줄 -->
<div>
	<form class="form-horizontal">
		<!-- 첫 줄 -->
		<div>
			<!-- left -->
			<div>
				닉네임
			</div>
			<!-- right -->
			<div>
				<input type="text" value="홍체리">
			</div>
		</div>
		
		<!-- 두 번째줄 -->
		<div>
			<!-- left -->
			<div>
				현재 비밀번호
			</div>
			<!-- right -->
			<div>
				<input type="password" value="1234567">
			</div>
		</div>
		
		<!-- 세 번째줄 -->
		<div>
			<!-- left -->
			<div>
				변경할 비밀번호
			</div>
			<!-- right -->
			<div>
				<input type="password" value="5959595">
			</div>
		</div>
		
		<!-- 네 번째줄 -->
		<div>
			<!-- left -->
			<div>
				현재 비밀번호
			</div>
			<!-- right -->
			<div>
				<input type="password" value="5959595">
			</div>
		</div>
		
		<!-- 다섯 번째 줄 -->
		<div>
			<button type="submit" class="btn btn-primary" id="updateBtn">수정하기</button>
			<button type="submit" class="btn btn-primary" id="cancellBtn">취소</button>
		</div>
	</form>	
</div>
</body>
</html>