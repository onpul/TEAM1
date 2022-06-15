<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		
		// 일단 이건 됨.
		/*
		$("input:checkbox").change(function()
		{
			//ajaxRequest(memberList);
			//alert("체크박스 값 변동");
			if($(this).is(":checked"))
				alert("체크박스 : " + $(this).val());
			
			
		});
		*/
		
		// 수정 버튼 클릭
		$("#submitBtn").click(function()
		{
			var result = confirm("제출 시 수정이 불가능합니다. \n 제출하시겠습니까?");
			
			if(result)
			{
				//$("#form").submit();
				alert("EvaluationInsert.jsp 로 form 내용 가지고 submit");
				alert("제출이 완료 되었습니다. 감사합니다.");
			}
			else
				alert("취소되었습니다.");
		});
		
		//취소 버튼 클릭
		$("#notSaveBtn").click(function()
		{
			//사용자 응답받아서 처리하는 코드로 변경 예정.
			//alert("정말 취소하시겠습니까?");
			var result = confirm("정말로 취소하시겠습니까? \n 취소하면 내용은 저장되지 않습니다.");
			
			if(result)
			{
				location.replace('mypagemain.action');
			}
			else
				alert("취소되었습니다.");
		});
		
		
		// 제출버튼 클릭
		$("#reportBtn").click(function()
		{
			// Report.jsp 
			// 신고폼으로 이동. 
			//location.replace('Report.jsp ');
			alert("Report.jsp 으로 이동.");
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
<div class="container">
	<!-- center에 위치 -->
	<div class="col col-xs-12">
		<p>모임 평가하기</p>
		<br />
		모임이름 : <span>${ridingName }</span>
	</div>
	
	<!-- 다음줄 right에 위치 -->
	<div class="col col-xs-12" style="text-align: right;">
		<p>작성자 : <span>${nickname }</span></p>
	</div>

	<%-- 
	<div>
		<h1>테스트</h1>
		<h1>${q1 }</h1>
	</div>
	// --%>
	<!-- 다음줄 center에 위치 -->
	<!-- 평가폼 -->
	<div>	
		<form id="form" action="" method="get">
			<div class="col col-xs-12 checkbox">
				<br />
				<span style="font-weight: bold;"> 결석한 사람을 체크해 주세요.</span>
				<!-- 모두 참여 -->
				<!-- <input type="checkbox" name="attendance" value="userX" id="userX" checked="checked" style="display: none;"> -->
				
				<!-- 참여자 명단 보여주기 -->
				 
				<c:forEach var="dto" items="${memberList }">
					<label for="${dto.nickName }"><input type="checkbox" name="attendance" value="${dto.nickName }" id="${dto.nickName }">${dto.nickName }</label>
				</c:forEach>
				
				<!-- 
				<label for="user1"><input type="checkbox" name="attendance" value="user1" id="user1">사과1</label>
				<label for="user2"><input type="checkbox" name="attendance" value="user2" id="user2">철수1</label>
				<label for="user3"><input type="checkbox" name="attendance" value="user3" id="user3">바나나1</label>
				<label for="user4"><input type="checkbox" name="attendance" value="user4" id="user4">영희1</label>
				 -->
				</div>
				
			<div id="divTemp"></div>
			<div class="col col-xs-12">
				<br />
				<!-- 본인은 제외. -->
				<!-- 결석자는 포함. -->
				<span style="font-weight: bold;">${q0.q_content }</span>
				<div id="tempXXX"></div>
				<select class="form-control" name="kindness" id="kindness">
				<c:forEach var="dto" items="${memberList }">
					<option value="${dto.nickName }">${dto.nickName }</option>
				</c:forEach>
				<!-- 
					<option value="user0">없음</option>
					<option value="user1">사과1</option>
					<option value="user2">철수1</option>
					<option value="user3">바나나1</option>
					<option value="user4">영희1</option>
				 -->
				</select>
			</div>
			
			<div class="col col-xs-12">
			 	<br />
				<span style="font-weight: bold;">${q1.q_content }</span>
				<select class="form-control" name="notKindness">
				<c:forEach var="dto" items="${memberList }">
					<option value="${dto.nickName }">${dto.nickName }</option>
				</c:forEach>
				<!-- 
					<option value="user0">없음</option>
					<option value="user1">사과1</option>
					<option value="user2">철수1</option>
					<option value="user3">바나나1</option>
					<option value="user4">영희1</option>
				-->
				</select>
			</div>
	
			<div class="col col-xs-12">		
				<br />
				<span style="font-weight: bold;">${q2.q_content }</span>
				<select class="form-control" name="dangerRiding">
				<c:forEach var="dto" items="${memberList }">
					<option value="${dto.nickName }">${dto.nickName }</option>
				</c:forEach>
				<!-- 
					<option value="user0">없음</option>
					<option value="user1">사과1</option>
					<option value="user2">철수1</option>
					<option value="user3">바나나1</option>
					<option value="user4">영희1</option>
				 //-->
				</select>
			</div>
			
			<div class="col col-xs-12">	
				<br />	
				<span style="font-weight: bold;">${q6.q_content }</span>
				<select class="form-control" name="notCompletion">
				<c:forEach var="dto" items="${memberList }">
					<option value="${dto.nickName }">${dto.nickName }</option>
				</c:forEach>
				<!-- 
					<option value="user0">없음</option>
					<option value="user1">사과1</option>
					<option value="user2">철수1</option>
					<option value="user3">바나나1</option>
					<option value="user4">영희1</option>
				// --> 
				</select>
			</div>
			
			<div class="col col-xs-12">
				<br />
				<!-- 모임의 속성이 숙련도 4~5이고 평속 20이상 
				     일 때만 활성화됨. -->
				<span style="font-weight: bold;">${q7.q_content }</span>
				<select class="form-control" name="different">
				<c:forEach var="dto" items="${memberList }">
					<option value="${dto.nickName }">${dto.nickName }</option>
				</c:forEach>
				<!--
					<option value="user0">없음</option>
					<option value="user1">사과1</option>
					<option value="user2">철수1</option>
					<option value="user3">바나나1</option>
					<option value="user4">영희1</option>
				-->
				</select>
			</div>
			
			<div class="col col-xs-12" style="text-align: left;">
				<!-- Report.jsp -->
				<!-- 신고폼으로 이동. -->
				<br />
				<button type="button" class="btn btn-danger" id="reportBtn">신고하기</button>
			</div>			
	
			<br />
			
			<div class="col col-xs-12" style="text-align: center;">
				<!-- 제출완료 alert 창 뜨기-->
				<!-- 기존 마이페이지로 이동 -->
				<!-- MyPageMain.jsp -->
				<button type="button" class="btn btn-primary" id="submitBtn">제출</button>
				
				<!-- 저장되지 않는다는 alert창 뜨기-->
				<!-- 기존 마이페이지로 이동 -->
				<!-- MyPageMain.jsp -->
				<button type="button" class="btn btn-default" id="notSaveBtn">닫기</button>
			</div>
		</form>
	</div>	<!-- 평가 div close -->
</div> <!-- div main close -->

</body>
</html>