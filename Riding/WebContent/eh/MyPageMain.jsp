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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
</head>
<body>

<!-- 마이페이지 메인 -->
<!-- MyPageMain.jsp -->


<!-- 맨윗부분 -->
<div>
	<!-- left -->
	<div>
		<div>
			프로필 사진
		</div>
		<div>
			이메일 주소
		</div>
	</div>
	
	<!-- right -->
	<div>
		<!-- right안에 left -->
		<div>
			<div>
				닉네임
			</div>
			
			<div>
				한마디
			</div>								
		</div>
		
		<!-- right안에 right -->
		<div>
			<div>
				등급
			</div>
			
			<div>
				공헌도
			</div>
		</div>
	</div>
</div>


<!-- 다음 줄 -->
<div>
	<div id="RidingStyleListUpdateForm">
		<!-- RidingStyleListUpdateForm.jsp 로 이동. -->
		나의 라이딩 스타일 조회하기
	</div>
	
	<div id="ParticipateRidingList">
		<!-- ParticipateRidingList.jsp 로 이동. -->
		참여 중인 라이딩 조회하기
	</div>
	
	<!-- 방장 / 참여자 일때 구분해서 페이지 이동. -->
	<div id="EvaluationLeaderForm">
		<!-- 방장이면, EvaluationLeaderForm.jsp 로 이동 -->
		<!-- 참여자이면,EvaluationMemberForm.jsp 로 이동  -->
		완료한 라이딩 평가하기
	</div>
	
	<div id="MyRidingRecordList">
		<!-- MyRidingRecordList.jsp 로 이동 -->
		라이딩 기록 조회하기
	</div>
	
	<div id="Invite">
		<!-- Invite.jsp 로 이동. -->
		초대장 조회하기
	</div>
	
	<div id="Friend">
		<!-- Friend.jsp 로 이동. -->
		친구 목록 조회하기
	</div>
	
	<div id="MyRationAndScoreList">
		<!-- MyRationAndScoreList.jsp 로 이동. -->
		등급 및 점수 조회하기
	</div>
	
	<div id="MyReviewList">
		<!-- MyReviewList.jsp 로 이동. -->
		작성한 게시글 조회하기
	</div>
	
	<div id="MyPenaltyList">
		<!-- MyPenaltyList.jsp 로 이동. --> 
		나에게 적용된 패널티 조회하기
	</div>
</div>

<!-- 그 다음 줄 -->

<div>
	<!-- left -->
	<div>
		<!-- MyInfoUpdateForm.jsp 로 이동. -->
		<button id="MyInfoUpdateForm">개인정보 수정하기</button>
	</div>
	
	<!-- right -->
	<div>
		<!-- MemberSecession.jsp 로 이동. -->
		<button id="MemberSecession">회원 탈퇴하기</button>
	</div>
</div>

</body>
</html>