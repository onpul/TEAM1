<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyRationAndScoreList.jsp</title>
</head>
<body>
<!-- 등급 및 점수 조회 페이지 -->
<div>
	나의 등급
	나의 공헌도
</div>

<div>
	금전거
	금헬멧
</div>

<div>
	나의 점수
	<div>
		리더십 점수 : <span>10 / 20</span>
	</div>
	
	<div>
		매너 점수 : <span>40 / 50</span>
	</div>
	
	<div>
		체력 점수 : <span>10 / 30</span>
	</div>
	
	<div>
		총점 : <span>60 / 100</span>
		도움말
	</div>
</div>

<div>
	나의 공헌도
	
	<div>
		<!-- MyReviewList.jsp로 이동. -->
		<!-- 공헌도 얻는 곳은 게시글 작성 혹은 맛집 생성 -->
		<a href="">공헌도 : <span>40 / 100</span></a>
	</div>
</div>

<div><button>목록으로</button></div>
</body>
</html>