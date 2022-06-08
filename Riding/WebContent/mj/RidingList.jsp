<!--
RidingList.jsp 
모임 리스트 페이지
메인 페이지 > 상단메뉴 > 모임 리스트
메인 페이지 > 캘린더 > 모임 리스트
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
<title>RidingList.jsp</title>
<!-- 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">

	$(function()
	{
		$("#myRidingBtn").click(function()
		{
			//alert("확인");
			
			// 사용자의 라이딩 스타일 받아오기 전 모든 체크를 해제
			$("input:radio[name='gender']").prop("checked", false);
			$("input:radio[name='age']").prop("checked", false);
			$("input:radio[name='speed']").prop("checked", false);
			$("input:radio[name='step']").prop("checked", false);
			$("input:radio[name='eat']").prop("checked", false);
			$("input:radio[name='dinning']").prop("checked", false);
			$("input:radio[name='mood']").prop("checked", false);
			
			// 사용자의 라이딩 스타일을 받아와 checked 적용
			myRidingCheck();
		});
	});
	
	function myRidingCheck()
	{
		//alert("확인");
		
		//alert(document.getElementsByName("gender"));
		
		// 라디오 버튼 분류 별로 변수에 담기
		var genderGroup = document.getElementsByName("gender");
		var ageGroup = document.getElementsByName("age");
		var speedGroup = document.getElementsByName("speed");
		var stepGroup = document.getElementsByName("step");
		var eatGroup = document.getElementsByName("eat");
		var dinningGroup = document.getElementsByName("dinning");
		var moodGroup = document.getElementsByName("mood");
		
		// 사용자의 라이딩 스타일 받아오기
		var gender = 1;
		var age = 2;
		var speed = 0;
		var step = 3;
		var eat = 1;
		var dinning = 0;
		var mood = 0;
		
		// 받아온 라이딩 스타일 적용(checked)
		genderGroup[gender].checked = true;
		ageGroup[age].checked = true;
		speedGroup[speed].checked = true;
		stepGroup[step].checked = true;
		eatGroup[eat].checked = true;
		dinningGroup[dinning].checked = true;
		moodGroup[mood].checked = true;
	}
	
	$(function()
	{
		$("#openRidingBtn").click(function()
		{
			//alert("확인");
			
			// 패널티 적용 여부 확인해서 패널티 있으면 경고창, 없으면 라이딩 생성 요청
			$.ajax(
			{
				type:"POST"
				, url:"수신하게 될 페이지"
				, success:function(args)
				{
					if (args == 0)
					{
						location.href = "ridingForm.action";
					}
					else if (args == 1) 
					{
						alert("패널티가 적용 중이므로 모임을 생성할 수 없습니다.");
					}
				}
				, error:function(e)
				{
					alert(e.responseText);
				}
			});
		}); 
	});
	
</script>
<style type="text/css">
</style>
</head>
<body>
<div class="form-group form-inline">
	<label for="gender" class="">모임명</label>
	<input type="text" class="form-control" placeholder="모임명">
	<button type="submit" class="btn btn-default">검색</button>
</div>
<div>
	<div class="form-group">
		<label for="gender" >성별</label>
		<label class="radio-inline">
			<input type="radio" name="gender" id="gender" value="all" checked="checked"> 전체
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
			<input type="radio" name="age" id="age" value="all" checked="checked"> 전체
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
			<input type="radio" name="speed" id="speed" value="all" checked="checked"> 전체
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
			<input type="radio" name="step" id="step" value="all" checked="checked"> 전체
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
			<input type="radio" name="eat" id="eat" value="all" checked="checked"> 전체
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
			<input type="radio" name="dinning" id="dinning" value="all" checked="checked"> 전체
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
			<input type="radio" name="mood" id="mood" value="all" checked="checked"> 전체
		</label>
		<label class="radio-inline">
			<input type="radio" name="mood" id="mood" value="침묵이 좋아요"/>침묵이 좋아요
		</label>
		<label class="radio-inline">
			<input type="radio" name="mood" id="mood" value="친목이 좋아요"/>친목이 좋아요
		</label>
	</div>
	<div class="form-group myRidingBtn">
		<input type="button" class="btn btn-default" id="myRidingBtn" value="나의 라이딩스타일 적용"/>
	</div>
</div>
<div>
	<table class="table">
		<tr>
			<th>모임명</th>
			<th>최대<input type="button" value="정렬"/></th>
			<th>참여가능<input type="button" value="정렬"/></th>
			<th>기간<input type="button" value="정렬"/></th>
			<th>참석가능여부<input type="button" value="정렬"/></th>
			<th></th>
		</tr>
		<tr>
			<td>인천 피플</td>
			<td>9</td>
			<td>2</td>
			<td>2022.06.20 12:00 ~ 2022.06.20 16:00</td>
			<td>참석 가능</td>
			<td><input type="button" value="신고"/></td>
		</tr>
		<tr>
			<td>인천 피플</td>
			<td>9</td>
			<td>2</td>
			<td>2022.06.20 12:00 ~ 2022.06.20 16:00</td>
			<td>참석 가능</td>
			<td><input type="button" value="신고"/></td>
		</tr>
		<tr>
			<td>인천 피플</td>
			<td>9</td>
			<td>2</td>
			<td>2022.06.20 12:00 ~ 2022.06.20 16:00</td>
			<td>참석 가능</td>
			<td><input type="button" value="신고"/></td>
		</tr>
		<tr>
			<td>인천 피플</td>
			<td>9</td>
			<td>2</td>
			<td>2022.06.20 12:00 ~ 2022.06.20 16:00</td>
			<td>참석 가능</td>
			<td><input type="button" value="신고"/></td>
		</tr>
		<tr>
			<td>인천 피플</td>
			<td>9</td>
			<td>2</td>
			<td>2022.06.20 12:00 ~ 2022.06.20 16:00</td>
			<td>참석 가능</td>
			<td><input type="button" value="신고"/></td>
		</tr>
	</table>
	<input type="button" class="btn btn-default" id="openRidingBtn" value="라이딩 모임 만들기"/>
</div>
</body>
</html>