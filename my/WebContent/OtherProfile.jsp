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
<title>OtherProfile</title>
<link rel="stylesheet"  type="text/css" href="<%=cp%>/css/main.css">
</head>
<body>



<h3>타 사용자 프로필(친구관계아닐때)</h3>

<div>

	<p>사진이 들어가는 부분입니다</p>
	
	<p>닉네임이 들어가는 부분입니다</p>
	
	<p>라이딩 등급이 들어가는 부분입니다</p>
	
	<p>공헌도 등급이 들어가는 부분입니다</p>
	
	<p>자기소개가 들어가는 부분입니다</p>

	<button>친구추가하기</button>
	<button>신고하기</button>
	
</div>


</body>
</html>