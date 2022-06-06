<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<head>
<meta charset="UTF-8">
<title>MyReviewList.jsp</title>
</head>
<body>
<!-- 내가 작성한 후기 게시글 조회 -->
<!--  MyReviewList.jsp-->
<div>
<!-- 가로로 나열 -->
	번호
	제목
	작성일
	조회수
</div>

<!-- dao에서 list로 가져와서 c:foreach로 받아와서 뿌리는 곳 -->
<div>
	<span>1</span>
	<span>홍대맛집</span>
	<span>2022-04-23</span>
	<span>1</span>
	
	<span>2</span>
	<span>엄청맛집</span>
	<span>2022-04-23</span>
	<span>10</span>
</div>

<div>
	<!-- MyPageMain.jsp 로 이동. -->
	<button id="myPageMain">마이페이지로 이동</button>
</div>

</body>
</html>