<!--
SearchPasswordForm.jsp 
비밀번호 찾기 폼
메인 페이지 > 상단 메뉴 > 로그인 > 비밀번호 찾기 폼
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
<title>SearchPasswordForm.jsp</title>
<!-- 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style type="text/css">
	.searchIdFormBox
	{
		width: 400px;
	}
	.goLoginBtn, .result-text, .searchBtn
	{
		text-align: center;
	}
</style>
</head>
<body>
<div class="searchIdFormBox">
	<form action="" class="searchIdForm">
		<div class="form-group form-inline">
			<label for="inputEmail">이메일</label>
	    	<input type="email" class="form-control" id="inputEmail" placeholder="이메일을 입력하세요">
			<select name="" id="" class="form-control">
				<option value="네이버">@naver.com</option>
				<option value="구글">@google.com</option>
				<option value="네이트">@nate.com</option>
			</select>    
	    </div>
	    <div class="form-group form-inline">
	    	<label for="">생년월일</label>
	    	<select name="birthyear" id="birthyear" class="form-control">
				<option value="year">1999</option>
				<option value="year">2000</option>
				<option value="year">2001</option>
			</select>년
			<select name="birthmonth" id="birthmonth" class="form-control">
				<option value="month">1</option>
				<option value="month">2</option>
				<option value="month">3</option>
			</select>월
			<select name="birthday" id="birthday" class="form-control">
				<option value="day">1</option>
				<option value="day">2</option>
				<option value="day">3</option>
			</select>일
	    </div>
	    <div class="form-group searchBtn">
			<input type="button" class="btn btn-default" value="찾기"/>
		</div>
		<hr />
	    <div class="form-group result-text">
	    	<p>회원가입 시 등록한 비밀번호는 java**** 입니다.</p>
			<p>회원정보를 찾을 수 없습니다.</p>
	    </div>
	    <div class="form-group goLoginBtn">
			<input type="button" class="btn btn-default" value="로그인 화면으로 돌아가기"/>
		</div>
	</form>
</div>
</div>
</body>
</html>