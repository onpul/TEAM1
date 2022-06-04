<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Letter.jsp</title>
</head>
<body>
<!-- 쪽지 상세 내용 조회 -->
<div>
	보낸 사람 : <span>홍길동</span>
</div>
<div>
	받은 시간 : <span>2022-05-21 21:29</span> 
</div>

<div>
	제목 : <span>안녕하세요.</span> 
</div>

<div>
	내용
	<br />
	<textarea rows="" cols="">
		안녕하세요. 홍길동입니다.
	</textarea>
</div>

<div>
	<button>답장</button>
	<button>닫기</button>
	<button>삭제</button>
</div>

<div>
	<textarea rows="" cols="">
	※누적된 쪽지가 100개를 초과하는 경우, <br />
	가장 오래된 쪽지부터 자동으로 삭제됩니다.
	</textarea>
	<button>신고</button>
</div>
</body>
</html>