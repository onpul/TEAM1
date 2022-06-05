<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Friend_Request.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<script type="text/javascript">

	function req()
	{
		alert("친구 신청 하시겠습니까?");
		alert("친구 신청을 했습니다.");
	}
	function res()
	{
		alert("해당 유저를 신고 하시겠습니까?");
		alert("신고를 했습니다.");
	}

</script>
</head>
<body>


<div>
	<h2>친구 요청</h2>
</div>
<div class="box3">
	<div>
		😺 달리는 야옹이 🚲🧢<br>
		
			야옹. 난 오늘도 달린다.
			함께 달리자.
		 <input type="button" value=" + 친구요청" onclick="req();"/> 
		<input type="button" value=" 🚨" onclick="res();"/>
	</div>
</div>
</body>
</html>