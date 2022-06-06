<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript">
	$(function()
	{
		$("#submitBtn").click(function()
		{
			//alert() 뜨고 submit 하는 형태로 변경 예정.
			alert("제출이 완료 되었습니다. 감사합니다.");
		});
		
		$("#notSaveBtn").click(function()
		{
			//사용자 응답받아서 처리하는 코드로 변경 예정.
			alert("정말 취소하시겠습니까?");
		});
		
		$("#reportBtn").click(function()
		{
			alert("신고하기 폼으로 이동.");
		});
	});
</script>



<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<head>
<meta charset="UTF-8">
<title>EvaluationMemberForm.jsp</title>
</head>
<body>
<!-- EvaluationMemberForm.jsp -->
<!-- 참여자의 평가 폼 페이지 -->


<!-- center에 위치 -->
<div>
	모임 평가하기
</div>

<!-- 다음줄 right에 위치 -->
<div>
	작성자 : <span>사과1</span>
</div>

<!-- 다음줄 center에 위치 -->
<!-- 평가폼 -->
<div>
	<form class="form-horizontal">
	
		<div class="checkbox">
			결석한 사람을 체크해 주세요.
			<label><input type="checkbox" name="사과1" value="사과1">사과1</label>
			<label><input type="checkbox" name="철수1" value="철수1">철수1</label>
			<label><input type="checkbox" name="바나나1" value="바나나1">바나나1</label>
			<label><input type="checkbox" name="영희1" value="영희1">영희1</label>
		</div>
		
		<div class="checkbox">
			방장의 리더쉽이 좋았다면 체크해 주세요.
			<label><input type="checkbox" name="leaderGood" value="leaderGood"></label>
		</div>
		
		<div>
			<!-- 본인은 제외. -->
			<!-- 결석자는 포함. -->
			<!-- 방장은 포함. -->
			가장 친절한 사람
			<select class="form-control">
				<option>없음</option>
				<option>김빵빵</option>
				<option>철수1</option>
				<option>바나나1</option>
				<option>영희1</option>
			</select>
		</div>
		
		<div>
			가장 불친절한 사람
			<select class="form-control">
				<option>없음</option>
				<option>김빵빵</option>
				<option>철수1</option>
				<option>바나나1</option>
				<option>영희1</option>
			</select>
		</div>

		<div>		
			위험하게 라이딩한 사람
			<select class="form-control">
				<option>없음</option>
				<option>사과1</option>
				<option>철수1</option>
				<option>바나나1</option>
				<option>영희1</option>
			</select>
		</div>
		
		<div>		
			완주하지 못한 사람
			<select class="form-control">
				<option>없음</option>
				<option>김빵빵</option>
				<option>철수1</option>
				<option>바나나1</option>
				<option>영희1</option>
			</select>
		</div>
		
		<div>
			<!-- 모임의 속성이 숙련도 4~5이고 평속 20이상 
			     일 때만 활성화됨. -->
			실제 숙련도와 다른 사람
			<select class="form-control">
				<option>없음</option>
				<option>김빵빵</option>
				<option>철수1</option>
				<option>바나나1</option>
				<option>영희1</option>
			</select>
		</div>
			
		<div>
			<!-- Report.jsp -->
			<!-- 신고폼으로 이동. -->
			<button class="btn btn-danger" id="reportBtn">신고하기</button>
		</div>			
			
		<div>
			<!-- 제출완료 alert 창 뜨기-->
			<!-- 기존 마이페이지로 이동 -->
			<!-- MyPageMain.jsp -->
			<button type="submit" class="btn btn-primary" id="submitBtn">제출</button>
			
			<!-- 저장되지 않는다는 alert창 뜨기-->
			<!-- 기존 마이페이지로 이동 -->
			<!-- MyPageMain.jsp -->
			<button class="btn btn-default" id="notSaveBtn">닫기</button>
		</div>
	</form>
</div>

</body>
</html>