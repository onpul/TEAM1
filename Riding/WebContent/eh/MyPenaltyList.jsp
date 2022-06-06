<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<head>
<meta charset="UTF-8">
<title>MyPenaltyList.jsp</title>
</head>
<body>
<!-- 나에게 적용된 패널티 조회하는 페이지 -->
<div>
	패널티 적용 내용
	패널티 적용 원인
	패널티 적용 기간
</div>

<div>
	<div>
		모임 생성 및 참여 정지
		리더십 점수 -3
		매너점수 -5
	</div>
	
	<div>
		<!-- 신고처리 대상 (예시는 모임이름) -->
		<span>혜화역라이딩모여라~!!!</span>
		모임의 확정 상태에서
		삭제, 모임 참여자들에게 민폐를 끼침.
	</div>
	
	<div>
		2022-05-14 14:03 ~ 2022-05-28 14:03
	</div>
</div>

<div>
	<div>
		사이트 이용 정지
		(모임 생성 및 참여 불가능 / 맛집 조회, 생성 불가능 / 게시글 생성, 수정, 삭제 불가능
		/ 쪽지 발신 불가능 / 초대 불가능 / 친구 추가 불가능 / 신고 불가능)
	</div>
	
	<div>
		<!-- 신고처리 대상 (예시는 게시글 허위신고로 패널티 적용) -->
		<span>홍대맛집추천입니다.</span>
		허위 신고에 해당합니다.
	</div>
	
	<div>
		2022-05-14 15:53 ~ 2022-05-28 15:53
	</div>
</div>

<div>
	<!-- Inquiry.jsp 로 이동. -->
	<button id="inquiry">문의하기</button>
	
	<!-- MyPageMain.jsp 로 이동. -->
	<button id="myPageMain">목록으로</button>
</div>
</body>
</html>