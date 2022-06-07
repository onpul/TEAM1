<!--
JoinForm.jsp 
회원가입 폼
메인페이지 > 상단 메뉴 > 회원가입

회원가입 완료 후 메인화면으로 이동 처리
--><%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JoinForm.jsp</title>
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
	// 이메일 직접 선택 시 인풋 박스 활성화하는 함수
	function email_change()
	{
		//alert("확인");
		
		if (document.joinForm.selectEmail.options[document.joinForm.selectEmail.selectedIndex].value=='0')
		{
			//alert("확인");
			
			document.joinForm.inputEmail2.disabled = false;
			document.joinForm.inputEmail2.value = "";
			document.joinForm.inputEmail2.focus();
		}
		else
		{
			document.joinForm.inputEmail2.disabled = true;
			document.joinForm.inputEmail2.value = document.joinForm.selectEmail.options[document.joinForm.selectEmail.selectedIndex].value;
		}
	}
	
	// 생년월일 datepicker
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
	
	// 닉네임 최대 글자수 제한 함수
	// maxLength 지정해서 12자 이상 작성이 안 되는데 경고문구가 뜨면 혼란을 줄 거 같아서 적용 안 함
	/*
	function maxLengthCheck(object)
	{
		if (object.value.length == object.maxLength)
		{
			//alert(document.getElementById("nickSpan"));
			document.getElementById("nickSpan").style.display = "inline";
			document.getElementById("nickSpan").style.color = "red";
		}
		else
			document.getElementById("nickSpan").style.color = "black";
	}
	*/
	
	// 비밀번호 최소 글자수 검사 함수
	function minLengthCheck(object)
	{
		if (object.value.length < 8)
		{
			document.getElementById("pwdSpan").style.color = "red";
		}
		else
			document.getElementById("pwdSpan").style.color = "black";
	}
	
	// 회원가입 버튼 클릭 시 작성 여부 확인 후 서브밋 하는 함수
	function formCheck()
	{
		//alert("확인");

		document.getElementById("pwdSpan").style.color = "black";
		
		var f = document.forms[0];
		
		if(!f.inputNickname.value)
		{
			alert("닉네임을 입력하세요.");
			return false;
		}

		if(!f.inputEmail.value)
		{
			alert("이메일을 입력하세요.");
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
		
		if(!f.birthday.value)
		{
			alert("생년월일을 입력하세요.");
			return false;
		}
		
		f.submit();
	}
	
</script>
<style type="text/css">
	span
	{
		font-size: small;
	}
	.joinFormBox
	{
		width: 600px;
	}
	.joinBtn
	{
		text-align: center;
	}
</style>
</head>
<body>
<div class="joinFormBox">
	<form action="" class="joinForm" name="joinForm">
		<div class="form-group form-inline">
			<label for="inputNickname">닉네임*</label>
	    	<input type="text" class="form-control" name="inputNickname" id="inputNickname" maxlength="12" placeholder="닉네임을 입력하세요" onkeydown="inputNickChk()">
	    	<input type="button" class="btn btn-default" value="중복 확인"/>
	    	<input type="hidden" name="duplication" value="uncheck"/><!-- 중복체크 여부 확인용 -->
	    	<br /><span id="nickSpan" style="display: none;">닉네임은 12자까지 입력할 수 있습니다.</span>
	    </div>
		<div class="form-group form-inline">
			<label for="inputEmail">이메일*</label>
	    	<input type="text" class="form-control" name="inputEmail" id="inputEmail" placeholder="이메일을 입력하세요" onfocus="this.value=';'">
			@
			<input type="text" class="form-control" name="inputEmail2" id="inputEmail2" style="width:100px;" disabled value="naver.com">
			<select name="selectEmail" id="selectEmail" class="form-control" onchange="email_change()">
				<option value="0">직접입력</option>			
				<option value="naver.com" selected>naver.com</option>
				<option value="hanmail.net">hanmail.net</option>
				<option value="nate.com">nate.com</option>
				<option value="yahoo.co.kr">yahoo.co.kr</option>
				<option value="gmail.com">gmail.com</option>
			</select>    
			<br /><span>등록하신 이메일은 로그인 시 아이디로 사용됩니다.</span>
	    </div>
	    <div class="form-group form-inline">
	    	<label for="inputPassword">비밀번호*</label>
	    	<input type="password" class="form-control" name="inputPassword" id="inputPassword" maxlength="20" placeholder="비밀번호를 입력하세요"  oninput="minLengthCheck(this)"/>
	    	<br /><span id="pwdSpan">8~20자 이내의 비밀번호를 입력하세요.</span>
	    </div>
	    <div class="form-group form-inline">
	    	<!-- 해당 년도 기준 +-10 선택할 수 있도록 구현해야 함 -->
	    	<label for="birthday">생년월일*</label>
	    	<input type="text" class="form-control" id="birthday" name="birthday" placeholder="생년월일을 입력하세요"/>
	    </div>
		<div class="form-group form-inline">
			<label for="gender">성별*</label>
			<select name="gender" id="gender" class="form-control">
				<option value="male">남성</option>
				<option value="female">여성</option>
			</select>
		</div>
		<hr />
		<div class="form-group">
			<h3>라이딩 스타일 <small>마이페이지에서 수정할 수 있습니다.</small></h3>
			<label for="gender" class="">성별</label>
			<!-- 본인과 동일한 성별의 옵션만 노출되게 구현해야 함 -->
			<label class="radio-inline">
				<input type="radio" name="gender" id="gender" value="nolimit" checked="checked"> 제한 없음
			</label>
			<label class="radio-inline">
				<input type="radio" name="gender" id="gender" value="male"/>남성
			</label>
			<label class="radio-inline">
				<input type="radio" name="gender" id="gender" value="female"/>여성
			</label>
		</div>
		<div class="form-group">
			<label for="age">연령대</label>
			<!-- 본인과 동일한 연령대의 옵션만 노출되게 구현해야 함 -->
			<label class="radio-inline">
				<input type="radio" name="age" id="age" value="nolimit" checked="checked"> 제한 없음
			</label>
			<label class="radio-inline">
				<input type="radio" name="age" id="age" value="20"/>20대
			</label>
			<label class="radio-inline">
				<input type="radio" name="age" id="age" value="30"/>30대
			</label>
			<label class="radio-inline">
				<input type="radio" name="age" id="age" value="40"/>40대
			</label>
			<label class="radio-inline">
				<input type="radio" name="age" id="age" value="50"/>50대
			</label>
			<label class="radio-inline">
				<input type="radio" name="age" id="age" value="60"/>60대 이상
			</label>
		</div>
		<div class="form-group">
			<label for="speed">속도</label>
			<label class="radio-inline">
				<input type="radio" name="speed" id="speed" value="nolimit" checked="checked"> 제한 없음
			</label>
			<label class="radio-inline">
				<input type="radio" name="speed" id="speed" value="20미만"/>20미만
			</label>
			<label class="radio-inline">
				<input type="radio" name="speed" id="speed" value="20이상 24미만"/>20이상 24미만
			</label>
			<label class="radio-inline">
				<input type="radio" name="speed" id="speed" value="24이상"/>24이상
			</label>
		</div>
		<div class="form-group">
			<label for="step">숙련도</label>
			<label class="radio-inline">
				<input type="radio" name="step" id="step" value="nolimit" checked="checked"> 제한 없음
			</label>
			<label class="radio-inline">
				<input type="radio" name="step" id="step" value="1년 미만" />1년 미만
			</label>
			<label class="radio-inline">
				<input type="radio" name="step" id="step" value="1~3년" />1~3년
			</label>
			<label class="radio-inline">
				<input type="radio" name="step" id="step" value="3~5년" />3~5년
			</label>
			<label class="radio-inline">
				<input type="radio" name="step" id="step" value="6년 이상" />6년 이상
			</label>
			<!-- 숙련도 관련 정보 제공 아이콘 추가해야 함 -->
		</div>
		<div class="form-group">
			<label for="eat">식사 여부</label>
			<label class="radio-inline">
				<input type="radio" name="eat" id="eat" value="nolimit" checked="checked"> 제한 없음
			</label>
			<label class="radio-inline">
				<input type="radio" name="eat" id="eat" value="밥 안 먹고 달려요"/>밥 안 먹고 달려요
			</label>
			<label class="radio-inline">
				<input type="radio" name="eat" id="eat" value="밥 먹고 달려요"/>밥 먹고 달려요
			</label>
		</div>
		<div class="form-group">
			<label for="dinning">회식 여부</label>
			<label class="radio-inline">
				<input type="radio" name="dinning" id="dinning" value="nolimit" checked="checked"> 제한 없음
			</label>
			<label class="radio-inline">
				<input type="radio" name="dinning" id="dinning" value="끝나고 회식 안 해요"/>끝나고 회식 안 해요
			</label>
			<label class="radio-inline">
				<input type="radio" name="dinning" id="dinning" value="끝나고 회식해요"/>끝나고 회식해요
			</label>
		</div>
		<div class="form-group">
			<label for="mood">분위기</label>
			<label class="radio-inline">
				<input type="radio" name="mood" id="mood" value="nolimit" checked="checked"> 제한 없음
			</label>
			<label class="radio-inline">
				<input type="radio" name="mood" id="mood" value="침묵이 좋아요"/>침묵이 좋아요
			</label>
			<label class="radio-inline">
				<input type="radio" name="mood" id="mood" value="친목이 좋아요"/>친목이 좋아요
			</label>
		</div>
		<div class="form-group joinBtn">
			<!-- 회원가입 완료 시 메인으로 이동 -->
			<input type="button" class="btn btn-default" value="회원가입" onclick="formCheck()"/>
		</div>
	</form>
</div>
</body>
</html>