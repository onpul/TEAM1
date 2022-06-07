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
<title>Inquiry.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
	function showPopup()
	{
		alert("등록되었습니다.");
		
	}

</script>
</head>
<body onload="window.resizeTo(1000,800)">

<div class="alert2">
<h1> 문의하기 </h1>
</div>
<hr />

<div class="sel1">
제  목&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  class="txtt"/><br /><br />
작성자&nbsp;&nbsp;&nbsp;<input type="text"  class="txtt"/><br /><br />
작성일&nbsp;&nbsp;&nbsp;<input type="text" class="txtt"/><br /><br />
내  용&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" class="txtt3"/><br /><br />
</div>

<div class="clsBtn5">
	<input type="button" id="clsBtn" value="등록하기" onclick="showPopup();" />	
	<input type="button" id="clsBtn" value="취소하기" onclick="window.close();" />	
</div>

</body>
</html>