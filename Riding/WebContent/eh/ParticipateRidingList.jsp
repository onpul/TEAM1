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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
</head>
<body>
<!-- 참여중인 라이딩 조회 페이지 -->
<!-- ParticipateRiding.jsp -->
<div>
	모임명
	기간
	모임상태
</div>

<!-- c:foreach로 뿌리는 부분 -->
<div>
	<!-- 해당 라이딩 모임을 클릭하면 그 모임 상세보기 페이지로 이동 -->
	<!-- RidingDetail.jsp -->
	<span>혜화역 라이딩 모임</span>
	<span>2022-05-23 12:00 ~ 2022-05-24 09:00</span>
	<span>모집중</span>
	<!-- 도움말 마우스 올리면 내용 보이기 액션 -->
	<span>도움말</span>
</div>

<div>
	<!-- MyPageMain.jsp 로 이동. -->
	<button id="myPageMain">마이페이지로 이동</button>
</div>
</body>
</html>