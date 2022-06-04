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
</head>
<body>
<!-- 친구 검색 시 쓰는 페이지 서브창 용 -->
<div>
	친구 목록
</div>

<div>
	<form action="">
		<div>
			<button>검색</button>
			<input type="text">
		</div>

		<!-- 위 text로 친구 검색하면 밑에 뜨는 거. -->		
		<div>
			친구 [ 3 ] 명
			<br />
			<input type="checkbox" name="친구">홍길동(hong@test.com)
			<br />
			<input type="checkbox" name="친구">체리(cherry@test.com)
			<br />
			<input type="checkbox" name="친구">on1(on1@test.com)
		</div>
		
		<div>
			<button>전체 선택</button>
			<button>선택 해제</button>
		</div>
	</form>
</div>
</body>
</html>