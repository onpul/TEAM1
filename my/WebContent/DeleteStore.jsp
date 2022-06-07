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
<title>맛집 지도 삭제</title>


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


<div>

	<h3>맛집 삭제</h3>
	
	<p>주소 검색 결과</p>
	<input type="text" id="addr" class="control" placeholder="주소 입력"/>
	<input type="button" value="검색하기" class="control" onclick="search()">
    <br>
	
	
	<p>작성자</p>
	<input type="text" class="txt"/>
	
	
	<p>작성일시</p>
	<input type="text" class="txt"/>
	
	<p>가게 위치 마커 표시 부분</p>
	
	<p>가게정보</p>
		<textarea name="" id="" cols="50" rows="10"></textarea>
	<br /><br />
	
	<p>관리자에게</p>
		<textarea name="" id="" cols="50" rows="7"></textarea>
	<br /><br />
	
	
	
	<br /><br />
	<input type="button" value="취소하기" class="btn"/>
	<input type="button" value="요청하기" class="btn"/>

</div>




</body>
</html>