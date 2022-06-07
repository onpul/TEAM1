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
<title>Invitation_Create.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
	function yep()
	{
		alert("님께 초대장을 전송하였습니다.");
		window.close();
		
	}
	function nop()
	{
		window.close();
		
	}
	function again()
	{
		alert("하여튼수정되게해야함~~.");
	}

</script>
</head>
<body onload="window.resizeTo(1000,800)"> 
<div class="alert2" >
<h1> 초대장 </h1>


</div>
<hr />

<div class="box1" >
초대장~ <br>
제생각에 여기에 직접 초대장을 입력하는게아니라<br>
자동으로 모임에 대한 양식이 입력되는걸로 생각했는데<br>
ㅎㅎㅎ ㅠㅠㅎ휴ㅠ어렵겠죠...?
</div>

<div class="clsBtn">

	<input type="button" id="clsBtn" value="전송" onclick="yep();" />
	<input type="button" id="clsBtn" value="수정" onclick="again();" />
	<input type="button" id="clsBtn" value="취소" onclick="nop();" />
</div>


</body>
</html>