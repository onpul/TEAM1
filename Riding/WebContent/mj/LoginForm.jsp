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
<script type="text/javascript">
	// 비밀번호 최소 글자수 확인 함수
	function minLengthCheck(object)
	{
		if (object.value.length < 8)
		{
			document.getElementById("pwdSpan").style.color = "red";
		}
		else
			document.getElementById("pwdSpan").style.color = "black";
	}
	
	// 로그인 버튼 클릭 시 작성 여부 확인 후 서브밋 하는 함수
	function formCheck()
	{
		//alert("확인");

		document.getElementById("pwdSpan").style.color = "black";
		
		var f = document.forms[0];
		
		if(!f.inputEmail.value)
		{
			alert("아이디를 입력하세요.");
			return false;
		}	
		
		if(!f.inputPassword.value)
		{
			alert("비밀번호를 입력하세요.");
			return false;
		}
		
		if(f.inputPassword.value.length < 8)
		{
			document.getElementById("pwdSpan").style.display = "inline";
			document.getElementById("pwdSpan").style.color = "red";
			
			return false;
		}
		
		f.submit();
		loginCheck();
	}
	
	$(function()
	{
		$("#loginBtn").click(function()
		{
			//alert("확인");
			
			// 보낼 데이터 구성
			var params = $("form[name=loginForm]").serialize();
			// serialize() : 폼 태그내의 항목들을 자동으로 읽어와 queryString 형식으로 변환 
			
			$.ajax(
			{
				type:"POST"
				, url:"수신하게 될 페이지"
				, data:params
				, success:function(args)
				{
					if (args == 0)
					{
						window.location.href = "main.action";
					}
					else if (args == 1) 
					{
						alert("회원정보를 찾을 수 없습니다.");
					}
				}
				, beforeSend:formCheck
				, error:function(e)
				{
					alert(e.responseText);
				}
			});
			
		});
	});
	
</script>
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
	    	<input type="email" class="form-control" id="inputEmail" placeholder="@pride.com">
	    	<br /><span>이메일 형식으로 입력하세요.</span>
	    </div>
		<div class="form-group form-inline">
	    	<label for="inputPassword">비밀번호</label>
	    	<input type="password" class="form-control" maxlength="20" id="inputPassword" oninput="minLengthCheck(this)" placeholder="비밀번호를 입력하세요"/>
	    	<br /><span id="pwdSpan">8~20자 이내의 비밀번호를 입력하세요.</span>
	    </div>
		<div class="form-group loginBtn">
			<input type="button" class="btn btn-default" id="loginBtn" value="로그인"/>
		</div>
		<div class="form-group link-text">
			<a href="">비밀번호 찾기 | </a><a href="">아이디 찾기 | </a><a href="">회원가입</a>
		</div>
	</form>
</div>	
</body>
</html>