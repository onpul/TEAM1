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
<title>Friend_Send.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">

	function rs()
	{
		window.open("Friend_S_R.jsp", "받은요청", "width=1000, height=400, left=400, top=50"); 
		window.close();
	}
	
	function fr()
	{
		window.open("Friend.jsp", "받은요청", "width=1000, height=400, left=400, top=50"); 
		window.close();
	}
	function del()
	{
		alert("친구 요청을 취소했습니다.")
	}


</script>
</head>
<body onload="window.resizeTo(1000,800)"> 

<div id="a" class="box2">
	<div class="fl">
	
	<a href="#" onclick="rs();" >받은 요청</a> | <a href="#" style="font-weight: bold; color:blue;"  onclick="sd();">보낸 요청</a>
	</div>
	<hr />
<input type="checkbox" id="a"/> 박정은(ebookreader) <br>
</div>

<div class="clsBtn3">
	<input type="button" id="clsBtn" class="clsBtn3" value="닫 기" onclick="fr();" />
	<input type="button" id="clsBtn" class="clsBtn3" value="삭 제" onclick="del();" />
</div>




</body>
</html>