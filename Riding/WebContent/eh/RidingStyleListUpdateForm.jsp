<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RidingStyleListUpdateForm.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript">
	$(function()
	{
		$("updateCheck").click(function()
		{
			alert("수정이 완료되었습니다.");
		});
		
		$("#myPageMain").click(function()
		{
			// 변경 사항이 있는지 체크하고
			// 있으면 → alert("변경사항이 저장되지 않습니다. 정말로 이전 페이지로 이동하시겠습니까?")
			// 없으면 바로 목록으로 이동.
			alert("변경사항이 저장되지 않습니다. 정말로 이전 페이지로 이동하시겠습니까?");
		})
	});
</script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
</head>
<body>
<!-- 라이딩 스타일 조회 및 수정 폼 -->
<!-- RidingStyleListUpdateForm.jsp -->

<div>
	라이딩 스타일 조회 및 수정 페이지
</div>
<div>
	<!-- 사용자가 회원가입할 때 입력한 값이 check 되어 보여진다. -->
	<!-- 회원가입할 때 라이딩스타일 체크 안했으면 당연히 check 안된 상태로 보여진다. -->
	<form class="form-horizontal">
		<div>
			연령대	
			<label><input type="radio" name="나이" value="해당없음">해당없음</label>
			<!-- 사용자가 회원가입할 때 기재한 생년월일로 나이대가 나온다. -->
			<label><input type="radio" name="나이" value="20대">20대</label>
		</div>
		
		<div>
			성별
			<label><input type="radio" name="gender" value="해당없음">해당없음</label>
			<!-- 사용자가 회원가입할 때 기재한 생년월일로 나이대가 나온다. -->
			<label><input type="radio" name="gender" value="여성">여성</label>
		</div>
		
		<div>
			숙련도
			<label><input type="radio" name="숙련도" value="제한없음">제한없음</label>
			<label><input type="radio" name="숙련도" value="1">1년 미만</label>
			<label><input type="radio" name="숙련도" value="2">1 ~ 3년</label>
			<label><input type="radio" name="숙련도" value="3">3 ~ 5년</label>
			<label><input type="radio" name="숙련도" value="4">6년 이상</label>
			<span>도움말</span>
		</div>
		
		<div>
			식사여부
			<label><input type="radio" name="식사여부" value="상관없음">상관없음</label>
			<label><input type="radio" name="식사여부" value="1">밥 먹고 달려요</label>
			<label><input type="radio" name="식사여부" value="2">밥 안먹고 달려요</label>
		</div>
		
		<div>
			회식여부
			<label><input type="radio" name="회식여부" value="상관없음">상관없음</label>
			<label><input type="radio" name="회식여부" value="1">끝나고 회식 해요</label>
			<label><input type="radio" name="회식여부" value="2">끝나고 회식 안해요</label>
		</div>
		
		<div>
			분위기
			<label><input type="radio" name="분위기" value="제한없음">제한없음</label>
			<label><input type="radio" name="분위기" value="1">친목이 좋아요</label>
			<label><input type="radio" name="분위기" value="2">침묵이 좋아요</label>
		</div>
		
		<div>
			<!-- MyPageMain.jsp 로 이동. -->
			<button id="updateCheck" class="btn btn-success">수정하기</button>
			<!-- MyPageMain.jsp 로 이동. -->
			<button id="myPageMain" class="btn btn-default">마이페이지로 이동</button>
		</div>
	</form>
</div>
</body>
</html>