<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YourProfile</title>


<!-- 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>



<link rel="stylesheet"  type="text/css" href="<%=cp%>/css/main.css">
</head>
<body>



<h3>타 사용자 프로필(친구관계일때)</h3>

<div>

	<p>사진이 들어가는 부분입니다</p>
	
	<p>닉네임이 들어가는 부분입니다</p>
	
	<p>라이딩 등급이 들어가는 부분입니다</p>
	
	<p>공헌도 등급이 들어가는 부분입니다</p>
	
	<p>자기소개가 들어가는 부분입니다</p>

	<button>쪽지보내기</button>
	<button>신고하기</button>
	
</div>


</body>
</html>