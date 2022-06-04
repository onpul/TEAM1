<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LetterSendForm.jsp</title>
</head>
<body>
<!-- 쪽지 생성 폼 -->
<div>
	<form action="">
		<div>
			받는 사람(ID)
			<input type="text" value="홍길동(hong@test.com)">
			<button>검색</button>
		</div>
		
		<div>
			<textarea rows="" cols="">
				쪽지내용 어쩌구 저쩌구
			</textarea>
		</div>
		
		<button>전송</button>
		<button>취소</button>
		
	</form>
</div>
</body>
</html>