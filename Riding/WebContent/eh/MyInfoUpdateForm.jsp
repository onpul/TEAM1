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
</head>
<body>
<!-- 맨 윗 줄 -->
<div>
<!-- 
	프로필 사진과 한마디는 해당 칸을 누르면
	선택하는 서브창이 열려서 거기서 선택한걸 가지고
	변경되는 ajax 처리.
-->
	<div>
		프로필 사진
	</div>
	
	<div>
		한마디
	</div>
</div>

<!-- 다음 줄 -->
<div>
	<form>
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
				<input type="text" value="1234567">
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
				<input type="text" value="5959595">
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
				<input type="text" value="5959595">
			</div>
		</div>
	</form>	
</div>
</body>
</html>