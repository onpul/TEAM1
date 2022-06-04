<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LetterList.jsp</title>
</head>
<body>
<!-- 쪽지 리스트 조회 페이지 -->
<div>
	쪽지
</div>

<div>
	<select>
		<option>전체쪽지</option>
		<option>받은쪽지</option>
		<option>보낸쪽지</option>
	</select>
	
	<a href="">쪽지쓰기</a>
</div>

<div>
	보낸사람
	제목
</div>

<div>
	<form action="">
		<input type="checkbox" name="삭제대상" value="쪽지ID">
		<span>홍길동</span>
		<span>안녕하세요.</span>
		
		<br />
		
		<input type="checkbox" name="삭제대상" value="쪽지ID">
		<span>임시완</span>
		<span>어쩌고</span>
		
		<br />
		
		<input type="checkbox" name="삭제대상" value="쪽지ID">
		<span>자비스</span>
		<span>하이요</span>
		
		<br />
		
		<span>1 2 3</span>
		<button>삭제</button>
	</form>
</div>
</body>
</html>