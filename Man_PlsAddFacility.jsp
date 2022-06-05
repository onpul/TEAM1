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
<title>Man_PlsAddFacility.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<script type="text/javascript">
	
	function showPopup()
	{
		window.open("MPAF.jsp", "편의시설생성요청조회", "width=1000, height=400, left=400, top=50"); 
	}

</script>
</head>
<body onload="window.resizeTo(1000,800)"> 

<div class="alert2" >
<h1> 관리자 </h1>
</div>
<hr />
	<div class="fl1">
		생성 요청 조회 <Br>
	</div>
	
	<div class="box2">
		<input type="checkbox" />[ 구라쟁이 ] 회원의 [ xx공원 음수대 등록 요청 ] <br>
	</div>
	
	<div class="clsBtn2">

	<input type="button" id="clsBtn" value="조회" onclick="showPopup();" />	
	
	<input type="button" id="clsBtn" value="닫기" onclick="window.close();" />		
</div>
</body>
</html>