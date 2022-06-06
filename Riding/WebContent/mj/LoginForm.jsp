<!--
LoginForm.jsp 
로그인 폼
메인페이지 > 상단메뉴 > 로그인
모임 페이지 > 상세보기 > 로그인

로그인 완료 후 메인페이지로 이동 처리
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
<title>LoginForm.jsp</title>
<!-- 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style type="text/css">
	.loginFormBox
	{
		width: 400px;
	}
	.loginBtn, .link-text
	{
		text-align: center;
	}
</style>
</head>
<body>
<div class="loginFormBox">
	<form action="login.action" method="post" id="loginForm">
		<div class="form-group form-inline">
			<label for="inputEmail">아이디</label>
	    	<input type="email" class="form-control" id="inputEmail" placeholder="@abcd.com">
	    </div>
		<div class="form-group form-inline">
	    	<label for="inputPassword">비밀번호</label>
	    	<input type="password" class="form-control" id="inputPassword" placeholder="비밀번호를 입력하세요"/>
	    	<br /><span>8~12자 이내의 비밀번호를 입력하세요.</span>
	    </div>
		<div class="form-group loginBtn">
			<input type="button" class="btn btn-default" value="로그인"/>
		</div>
		<div class="form-group link-text">
			<a href="">비밀번호 찾기 | </a><a href="">아이디 찾기 | </a><a href="">회원가입</a>
		</div>
	</form>
</div>	
</body>
</html>