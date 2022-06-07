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
<title>맛집 후기 수정 폼</title>

<!-- 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<link rel="stylesheet"  type="text/css" href="<%=cp%>/css/main.css">

<script type="text/javascript">

</script>
</head>
<body>


<div>

	<p>제목</p>
	<input type="text" class="txt"/>
	
	<p>작성자</p>
	<input type="text" class="txt" />

	<br /><br />
	<form action="">
		<textarea name="" id="" cols="50" rows="10"></textarea>
	</form>
	
	<p>맛집 위치 지도에 마커로 표시 부분</p>
	
	<br />
	
	<p>가게 주소</p>
	<input type="text" class="txt"/>
	
	<p>가게명</p>
	<input type="text" class="txt" />
	
	<br />
	
	<p>작성일</p>
	<input type="text" class="txt"/>
	
	<p>조회수</p>
	<input type="text" class="txt" />
	
	
	<br /><br />
	
	<input type="button" value="수정완료" class="btn"/>
	<input type="button" value="취소" class="btn"/>


   
</div>


</body>
</html>

