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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script type="text/javascript">
	
	$(document).ready(function()
	{
		//alert("확인");
		
		$("#searchBtn").click(function()
		{
			//alert("확인");
			
			var params = $("form[name=searchPwdForm]").serialize();
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
						str = args.substr(0, 3);
						
						$("#resultText").html("<span>회원가입 시 등록한 비밀번호는 " + str + "**** 입니다.</span>");
					}
					else if (args == null) 
					{
						$("#resultText").html("<span>회원정보를 찾을 수 없습니다.</span>");
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

	//이메일 직접 선택 시 인풋 박스 활성화하는 함수
	function email_change()
	{
		//alert("확인");
		
		if (document.searchPwdForm.selectEmail.options[document.searchPwdForm.selectEmail.selectedIndex].value=='0')
		{
			//alert("확인");
			
			document.searchPwdForm.inputEmail2.disabled = false;
			document.searchPwdForm.inputEmail2.value = "@";
			document.searchPwdForm.inputEmail2.focus();
		}
		else
		{
			document.searchPwdForm.inputEmail2.disabled = true;
			document.searchPwdForm.inputEmail2.value = document.searchPwdForm.selectEmail.options[document.searchPwdForm.selectEmail.selectedIndex].value;
		}
	}

	//생년월일 datepicker
	$(document).ready(function()
	{
		//alert("확인");
		
		$("#birthday").datepicker(
		{
			dateFormat : "yy-mm-dd"
			, changeMonth : true
			, changeYear : true
		});
	});

	// 찾기 버튼 클릭 시 작성 여부 확인 후 서브밋 하는 함수
	function formCheck()
	{
		//alert("확인");

		var f = document.forms[0];

		if(!f.inputEmail.value)
		{
			alert("이메일을 입력하세요.");
			return false;
		}	
		
		if(!f.birthday.value)
		{
			alert("생년월일을 입력하세요.");
			return false;
		}
		
		f.submit();
	}
	
</script>
<style type="text/css">
	.searchIdFormBox
	{
		width: 600px;
	}
	.goLoginBtn, .resultText, .searchBtn
	{
		text-align: center;
	}
</style>
</head>
<body>
<div class="searchIdFormBox">
	<form action="" class="searchPwdForm" name="searchPwdForm" id="searchPwdForm">
		<div class="form-group form-inline">
			<label for="inputEmail">이메일*</label>
	    	<input type="text" class="form-control" name="inputEmail" id="inputEmail" placeholder="이메일을 입력하세요" onfocus="this.value=';'">
			<input type="text" class="form-control" name="inputEmail2" id="inputEmail2" style="width:120px;" disabled value="@naver.com">
			<select name="selectEmail" id="selectEmail" class="form-control" onchange="email_change()">
				<option value="0">직접입력</option>			
				<option value="@naver.com" selected>@naver.com</option>
				<option value="@hanmail.net">@hanmail.net</option>
				<option value="@nate.com">@nate.com</option>
				<option value="@yahoo.co.kr">@yahoo.co.kr</option>
				<option value="@gmail.com">@gmail.com</option>
			</select>    
	    </div>
	    <div class="form-group form-inline">
	    	<label for="birthday">생년월일*</label>
	    	<input type="text" class="form-control" id="birthday" name="birthday" placeholder="생년월일을 입력하세요"/>
	    </div>
	    <div class="form- group searchBtn">
			<input type="button" class="btn btn-default" value="찾기" onclick="formCheck()"/>
		</div>
		<hr />
	    <div class="form-group resultText">
	    	<!-- 비밀번호 찾기 성공 시 노출 -->
	    	<p>회원가입 시 등록한 비밀번호는 java**** 입니다.</p>
	    	<!-- 비밀번호 찾기 실패 시 노출 -->
			<p>회원정보를 찾을 수 없습니다.</p>
	    </div>
	    <div class="form-group goLoginBtn">
			<input type="button" class="btn btn-default" onclick="location.href='loginForm.action'" value="로그인 화면으로 돌아가기"/>
		</div>
	</form>
</div>
</body>
</html>