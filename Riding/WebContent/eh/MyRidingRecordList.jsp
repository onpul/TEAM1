<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyRidingRecordList.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
</head>
<body>
<!-- 라이딩 기록 리스트 조회 페이지 -->
<!-- MyRidingRecordList.jsp -->
<div>
<!-- 가로로 나열 -->
	번호
	모임명
	라이딩 기간
</div>

<!-- dao에서 list로 가져와서 c:foreach로 받아와서 뿌리는 곳 -->
<div>
	<span>1</span>
	<span>새벽반</span>
	<span>2022-05-23 12:00 ~ 2022-05-24 09:00</span>
	
	<!-- 편의상 개행 태그 사용했음 -->
	<br />
	
	<span>2</span>
	<span>20대</span>
	<span>2021-05-23 12:00 ~ 2021-05-24 09:00</span>
</div>

<div>
	<!-- MyPageMain.jsp 로 이동. -->
	<button id="myPageMain">마이페이지로 이동</button>
</div>
</body>
</html>