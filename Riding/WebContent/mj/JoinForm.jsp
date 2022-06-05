<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
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
<style type="text/css">
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
	<form action="" class="joinForm">
		<div class="form-group form-inline">
			<label for="inputNickname">닉네임</label>
	    	<input type="email" class="form-control" id="inputNickname" placeholder="닉네임을 입력하세요">
	    	<input type="button" class="btn btn-default" value="중복 확인"/>
	    	<br /><span>12자 이내의 닉네임을 입력하세요.</span>
	    </div>
		<div class="form-group form-inline">
			<label for="inputEmail">이메일</label>
	    	<input type="email" class="form-control" id="inputEmail" placeholder="이메일을 입력하세요">
			<select name="" id="" class="form-control">
				<option value="네이버">@naver.com</option>
				<option value="구글">@google.com</option>
				<option value="네이트">@nate.com</option>
			</select>    
			<br /><span>등록하신 이메일은 로그인 시 아이디로 사용됩니다.</span>
	    </div>
	    <div class="form-group form-inline">
	    	<label for="inputPassword">비밀번호</label>
	    	<input type="password" class="form-control" id="inputPassword" placeholder="비밀번호를 입력하세요"/>
	    	<br /><span>8~12자 이내의 비밀번호를 입력하세요.</span>
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
		<div class="form-group form-inline">
			<label for="gender">성별</label>
			<select name="gender" id="gender" class="form-control">
				<option value="male">남성</option>
				<option value="female">여성</option>
			</select>
		</div>
		<hr />
		<div class="form-group">
			<h3>라이딩 스타일 <small>마이페이지에서 수정할 수 있습니다.</small></h3>
			<label for="gender" class="">성별</label>
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
			<input type="button" class="btn btn-default" value="회원가입"/>
		</div>
	</form>
</div>
</body>
</html>