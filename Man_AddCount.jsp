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
<title>Man_AddCount.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
	function showPopup()
	{
		window.open("Man_PlsAddFacility.jsp", "편의시설생성요청조회", "width=1000, height=400, left=400, top=50"); 
	}
	function showPopup2()
	{
		window.open("Manager.jsp", "관리자", "width=1000, height=400, left=400, top=50"); 
	}
	
	function cls()
	{
		window.close();
	}
	function nop()
	{
		window.opener(showPopup2());
		window.close(cls());
	
	}
</script>
</head>
<body onload="window.resizeTo(1000,800)"> 

<div class="alert2" >
<h1> 관리자 </h1>
</div>
<hr />
	<div class="fl1">
		생성 요청 <Br>
	</div>
	
	<div class="clsBtn2">

	<a href="Man_PlsAddFacility.jsp" id="clsBtn" >·  생성 요청 [ 1 ]</a>
	
	<input type="button" id="clsBtn" value="닫기" onclick="nop();" />		
</div>
</body>
</html>