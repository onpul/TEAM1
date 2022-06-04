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
</head>
<body>
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
	<div>
		나의 라이딩 스타일 조회하기
	</div>
	
	<div>
		참여 중인 라이딩 조회하기
	</div>
	
	<div>
		완료한 라이딩 평가하기
	</div>
	
	<div>
		라이딩 기록 조회하기
	</div>
	
	<div>
		초대장 조회하기
	</div>
	
	<div>
		친구 목록 조회하기
	</div>
	
	<div>
		등급 및 점수 조회하기
	</div>
	
	<div>
		작성한 게시글 조회하기
	</div>
	
	<div>
		나에게 적용된 패널티 조회하기
	</div>
</div>

<!-- 그 다음 줄 -->

<div>
	<!-- left -->
	<div>
		<button>개인정보 수정하기</button>
	</div>
	
	<!-- right -->
	<div>
		<button>회원 탈퇴하기</button>
	</div>
</div>

</body>
</html>