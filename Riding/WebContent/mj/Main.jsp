<!--
Main.jsp 
메인페이지(최초 접속 뷰 페이지)
-->
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main.jsp</title>
<!-- 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style type="text/css">
	.calendar-box
	{
		background-color: yellow;
	}
	.map-box
	{
		background-color: orange;
	}
	.btn-box
	{
		text-align: right;
	}
	.btn
	{
		margin-right: 40px;
	}
	
</style>
</head>
<body>
<div class="row">
	<!-- 달력 들어갈 div -->
	<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 calendar-box">
		달력 들어갈 div
	</div>
	
	<!-- 지도 들어갈 div -->
	<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
		<select name="" id="" class="form-control">
			<option value="">맛집 보기</option>
			<option value="">편의시설 보기</option>
		</select>
		<div class="map-box">
			지도 들어갈 div
		</div>
	</div>
</div>
<!-- 회원일 경우 적용 -->
<div class="row btn-box"> 
	<input type="button" class="btn btn-default" value="모임 생성하기"/>
</div>

<!-- 관리자일 경우 적용 -->
<!-- 
<div class="row btn-box"> 
	<input type="button" class="btn btn-default" value="관리자 페이지로 이동"/>
</div>
-->
</body>
</html>