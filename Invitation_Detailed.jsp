<!-- 4. 초대장 상세 내용 -->
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
<title>Invitation_Detailed.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">

	function showPopup2() 
	{
		window.open("Invite.jsp", "받은초대", "width=1000, height=400, left=400, top=50"); 
	}
	
	function cls()
	{
		window.close();
	}
	function nop()
	{
		alert("초대를 거절했습니다.");
		window.opener(showPopup2());
		window.close(cls());
	
	}
	function yep()
	{
		alert("초대를 수락했습니다.");
		window.opener(showPopup2());	// 수락 시 대기실로 이동인데 임시로 지정. 합칠때 바꿀거임~~!!ㄴ
		window.close(cls());
	}
	
	
/*  onclick으로 수락시 꺼짐 / 거절시 꺼짐 / 단, 꺼질 때 다시 받은 초대장이 켜짐 

흐름 : 초대 상세내용 ->  거절 -> function nop -> 초대거절했습니다 알림 -> showPopup2(받은 초대)켜짐 과 함께 초대 상세 내용 꺼짐 
흐름 : 초대 상세내용 -> 수락 -> function yep -> 초대거절했습니다 알림 -> 수락 시 대기실로 이동 과 함께 초대 상세 내용 꺼짐 

 
 
 
 
*/
</script>
</head>
<body onload="window.resizeTo(1000,800)"> 
<div class="alert2" >
<h1> 초대장 </h1>


</div>
<hr />

<div class="box1" >
초대장~ <br>
블라
</div>
<!-- onclick 을 넣어서 수락시 꺼짐 / 거절시 꺼짐 / 단, 꺼질 때 다시 받은 초대장으로 돌아가게끔 -->
<div class="clsBtn">

	<input type="button" id="clsBtn" value="수락" onclick="yep();" /> 
	
	
	<input type="button" id="clsBtn" value="거절" onclick="nop();" />
</div>

</body>
</html>