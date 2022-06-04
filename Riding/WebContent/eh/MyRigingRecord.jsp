<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyRigingRecord.jsp</title>
</head>
<body>
<!-- 라이딩 기록 상세보기 페이지 -->
<div>
	모임명
	<span>새벽반</span>
</div>
<div>
	기간
	<span>2022-05-23 12:00 ~ 2022-05-24 09:00</span>
</div>

<div>
	방장
	<span>happy</span><span>(happy@test.com)</span>
</div>

<div>
	참여자 이름
	<div>
		happy(happy@test.com)
		<br>
		돈(money@test.com)
		<br />
		좋아좋아(love@test.com)
		<br />
		탈퇴회원
	</div>
</div>

<div>
	경로
</div>

<div>
	<button>목록으로</button>
</div>
</body>
</html>