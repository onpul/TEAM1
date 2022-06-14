<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPageMain.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript">
	
	$(function()
	{
		$("#myRidingList").click(function()
		{
			//나의 라이딩 스타일 조회하기
			//alert("RidingStyleListUpdateForm.jsp 로 이동.")
			location.replace("ridingstylelistupdateform.action");
		});
		
		$("#currenRidingList").click(function()
		{
			//참여 중인 라이딩 조회하기
			//alert("ParticipateRidingList.jsp 로 이동.")
			location.replace("participateridinglist.action");
		});

		$("#succRiding").click(function()
		{
			//완료한 라이딩 평가하기
			//방장이면, EvaluationLeaderForm.jsp 로 이동
			//참여자이면,EvaluationMemberForm.jsp 로 이동
			//alert(" EvaluationLeaderForm.jsp 로 이동.")
			location.replace("evaluationleaderform.action");
		});
		
		$("#ridingRecordList").click(function()
		{
			//라이딩 기록 조회하기
			//alert(" MyRidingRecordList.jsp 로 이동.")
			location.replace("myridingrecordlist.action");
		});
		
		$("#comeOnList").click(function()
		{
			//초대장 조회하기
			alert(" Invite.jsp 로 이동.")
		});
		
		$("#friList").click(function()
		{
			//친구 목록 조회하기
			alert(" Friend.jsp  로 이동.")
		});
		
		$("#scoreList").click(function()
		{
			//등급 및 점수 조회하기
			//alert(" MyRationAndScoreList.jsp  로 이동.")
			location.replace("myrationandscorelist.action");
		});
		
		$("#reviewList").click(function()
		{
			//작성한 게시글 조회하기
			//alert(" MyReviewList.jsp  로 이동.")
			location.replace("myreviewlist.action");
		});
		
		$("#penaltyList").click(function()
		{
			//나에게 적용된 패널티 조회하기
			//alert(" MyPenaltyList.jsp  로 이동.")
			location.replace("mypenaltylist.action");
		});
		
		
		
		
		
		$("#MyInfoUpdateForm").click(function()
		{
			//개인정보 수정하기
			//alert(" MyInfoUpdateForm.jsp  로 이동.")
			location.replace("myinfoupdateform.action");
		});
		
		$("#MemberSecession").click(function()
		{
			//회원 탈퇴하기
			//alert(" MemberSecession.jsp  로 이동.")
			window.open("membersecession.action","","width=400px,height=400px");
		});
		
		
		$("#tempBtn").click(function()
		{
			window.open("letterlist.action","","width=400px,height=400px");
		});
		
		
		
	});
	
</script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<style type="text/css">
	
	*{font-size: large;}

</style>
</head>
<body>

<!-- 마이페이지 메인 -->
<!-- MyPageMain.jsp -->

<div class="container">
	<!-- 맨윗부분 -->
	<div class="row">
		<!-- left -->
		<div class="col-xs-4" style="background-color: aqua;">
			<div style="text-align: center;">
				<!-- 프로필 아이콘 이미지로 변경예정 -->
				<div class="glyphicon glyphicon-user"></div> 
			</div>
			<div style="text-align: center;">
				<span>cherry5813@naver.com</span>
			</div>
		</div>
		
		<!-- center -->
		<div class="col-xs-4" style="background-color:yellow;">
			<div style="text-align: center;">
				<span>체리</span>
			</div>
			
			<div style="text-align: center;">
				<span>오늘도 라이딩~!!!</span>
			</div>								
		</div>
		
		<!-- right -->
		<div class="col-xs-4">	
			<div style="text-align: center;">
				<div>자전거 이미지</div>
			</div>
			
			<div style="text-align: center;">
				<div>헬멧 이미지</div>
			</div>
		</div>
	</div>
	
	
	<div class="row" style="background-color: silver;">
		<div class="col-xs-12">
			<li style="list-style: none;">
				<!-- RidingStyleListUpdateForm.jsp 로 이동. -->
				<ul><span id="myRidingList">나의 라이딩 스타일 조회하기</span></ul>
				
				<!-- ParticipateRidingList.jsp 로 이동. -->
				<ul><span id="currenRidingList">참여 중인 라이딩 조회하기</span></ul>
				
				<!-- 방장이면, EvaluationLeaderForm.jsp 로 이동 -->
				<!-- 참여자이면,EvaluationMemberForm.jsp 로 이동  -->
				<ul><span id="succRiding">완료한 라이딩 평가하기</span></ul>
				
				<!-- MyRidingRecordList.jsp 로 이동 -->
				<ul><span id="ridingRecordList">라이딩 기록 조회하기</span></ul>
				
				<!-- Invite.jsp 로 이동. -->
				<ul><span id="comeOnList">초대장 조회하기</span></ul>
				
				<!-- Friend.jsp 로 이동. -->
				<ul><span id="friList">친구 목록 조회하기</span></ul>
				
				<!-- MyRationAndScoreList.jsp 로 이동. -->
				<ul><span id="scoreList">등급 및 점수 조회하기</span></ul>
				
				<!-- MyReviewList.jsp 로 이동. -->
				<ul><span id="reviewList">작성한 게시글 조회하기</span></ul>
				
				<!-- MyPenaltyList.jsp 로 이동. --> 
				<ul><span id="penaltyList">나에게 적용된 패널티 조회하기</span></ul>
				
			</li>
		</div>
	</div>
	
	<div class="row" style="background-color:green;">
		<!-- left -->
		<div class="col-xs-6" style="text-align: center;">
			<!-- MyInfoUpdateForm.jsp 로 이동. -->
			<button id="MyInfoUpdateForm" class="btn btn-outline-primary">개인정보 수정하기</button>
		</div>
		
		<!-- right -->
		<div class="col-xs-6" style="text-align: center;">
			<!-- MemberSecession.jsp 로 이동. -->
			<button id="MemberSecession" class="btn btn-outline-primary">회원 탈퇴하기</button>
		</div>
	</div>
	
	<div>
		<button type="button" id="tempBtn">
			쪽지 조회하기 (임시버튼)
		</button>	
	</div>
</div>
</body>
</html>