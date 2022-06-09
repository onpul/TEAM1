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
		// 결석자 모두선택
		$("#allCheck").click(function()
		{
			$("#allCheckDiv").children().prop("checked",this.checked);
		});
		
	
		$("#submitBtn").click(function()
		{
			var result = confirm("제출 시 수정이 불가능합니다. \n 제출하시겠습니까?");
			
			if(result)
			{
				// 어떤게 선택된지 알아야함 [확인 필요]
				$("#form").submit();
				alert("제출이 완료 되었습니다. 감사합니다.");
			}
			else
				alert("취소되었습니다.");
		});
		
		$("#notSaveBtn").click(function()
		{
			//사용자 응답받아서 처리하는 코드로 변경 예정.
			//alert("정말 취소하시겠습니까?");
			var result = confirm("정말로 취소하시겠습니까? \n 취소하면 내용은 저장되지 않습니다.");
			
			if(result)
			{
				location.replace('MyPageMain.jsp');
			}
			else
				alert("취소되었습니다.");
		});
		
		$("#reportBtn").click(function()
		{
			// Report.jsp 
			// 신고폼으로 이동. 
			//location.replace('Report.jsp ');
			alert("신고하기 폼으로 이동.");
		});
	});
</script>



<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<head>
<meta charset="UTF-8">
<title>EvaluationLeaderForm.jsp</title>
</head>
<body>
<!-- EvaluationLeaderForm.jsp -->
<!-- 방장의 평가 폼 페이지 -->

<!-- div main -->
<div>
	<!-- center에 위치 -->
	<div>
		모임 평가하기
	</div>
	
	<!-- 다음줄 right에 위치 -->
	<div>
		작성자 : <span>김빵빵</span>
	</div>
	
	<!-- 다음줄 center에 위치 -->
	<!-- 평가폼 -->
	<div style="background-color: red">	
										<!-- 평가insertControll 필요! -->
		<form class="form-horizontal" id="form" action="EvaluationInsert.jsp" method="get">
			<div>
				결석한 사람을 체크해 주세요. 
				<label for="allCheck">
					<input type="checkbox" id="allCheck"/>
					<span>모두 선택</span>
				</label>
				<br />
				<div id="allCheckDiv">
					<input type="checkbox" name="ch1" value="ch1" id="ch1"><label for="ch1">사과1</label>
					<input type="checkbox" name="ch2" value="ch2" id="ch2"><label for="ch2">철수1</label>
					<input type="checkbox" name="ch3" value="ch3" id="ch3"><label for="ch3">바나나1</label>
					<input type="checkbox" name="ch4" value="ch4" id="ch4"><label for="ch4">영희1</label>
				</div>
			</div>
			
			<div>
				<!-- 본인은 제외. -->
				<!-- 결석자는 포함. -->
				가장 친절한 사람
				<select class="form-control">
					<option>없음</option>
					<option>사과1</option>
					<option>철수1</option>
					<option>바나나1</option>
					<option>영희1</option>
				</select>
			</div>
			
			<div>
				가장 불친절한 사람
				<select class="form-control">
					<option>없음</option>
					<option>사과1</option>
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
					<option>사과1</option>
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
					<option>사과1</option>
					<option>철수1</option>
					<option>바나나1</option>
					<option>영희1</option>
				</select>
			</div>
				
			<div>
				<!-- Report.jsp -->
				<!-- 신고폼으로 이동. -->
				<button type="button" class="btn btn-danger" id="reportBtn">신고하기</button>
			</div>			
	
			<br />
			
			<div>
				<!-- 제출완료 alert 창 뜨기-->
				<!-- 기존 마이페이지로 이동 -->
				<!-- MyPageMain.jsp -->
				<button type="button" class="btn btn-primary" id="submitBtn">제출</button>
				
				<!-- 저장되지 않는다는 alert창 뜨기-->
				<!-- 기존 마이페이지로 이동 -->
				<!-- MyPageMain.jsp -->
				<button type="button" btn btn-default" id="notSaveBtn">닫기</button>
			</div>
		</form>
	</div>	<!-- 평가 div close -->
</div> <!-- div main close -->

</body>
</html>