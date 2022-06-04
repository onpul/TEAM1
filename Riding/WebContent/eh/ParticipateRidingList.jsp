<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ParticipateRiding.jsp</title>
</head>
<body>
<div>
	모임명
	기간
	모임상태
</div>

<!-- c:foreach로 뿌리는 부분 -->
<div>
	<span>혜화역 라이딩 모임</span>
	<span>2022-05-23 12:00 ~ 2022-05-24 09:00</span>
	<span>모집중</span>
	<!-- 도움말 마우스 올리면 내용 보이기 액션 -->
	<span>도움말</span>
</div>

<div>
	<button>마이페이지로 이동</button>
</div>
</body>
</html>