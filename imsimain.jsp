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
<title>Notice.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<style type="text/css">
.alert {
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
}
</style>

<script type="text/javascript">

	function showPopup() 
	{
		window.open("Notice.jsp", "알림", "width=1000, height=400, left=400, top=50"); 
	}
	function showPopup2() 
	{
		window.open("Invite.jsp", "받은초대", "width=1000, height=400, left=400, top=50"); 
	}
	function showPopup3() 
	{
		window.open("Inv_FriSend.jsp", "초대생성", "width=1000, height=400, left=400, top=50"); 
	}
	function showPopup6() 
	{
		window.open("Friend.jsp", "친구", "width=1000, height=400, left=400, top=50"); 
	}
	function showPopup7() 
	{
		window.open("Friend_Request.jsp", "친구요청", "width=1000, height=400, left=400, top=50"); 
	}
	function showPopup8() 
	{
		window.open("Report.jsp", "신고", "width=1000, height=400, left=400, top=50"); 
	}
	function showPopup9() 
	{
		window.open("Inquiry.jsp", "문의하기", "width=1000, height=400, left=400, top=50"); 
	}
	function showPopup10() 
	{
		window.open("Manager.jsp", "관리자", "width=1000, height=400, left=400, top=50"); 
	}

</script>
</head>
<body>
<div class="alert">
<h1> 메인 </h1>

<input type="button" style="border: none;"  value="🔔알림" onclick="showPopup();">
<input type="button"  style="border: none;" value="📫받은초대"  onclick="showPopup2();">
<input type="button"  style="border: none;" value="📝초대"onclick="showPopup3();">
<input type="button"  style="border: none;" value="👨‍👨‍👦‍👦친구목록"onclick="showPopup6();">
<input type="button"  style="border: none;" value="👤 친구요청" onclick="showPopup7();">
<input type="button"  style="border: none;" value="🚨 신고" onclick="showPopup8();">
<input type="button"  style="border: none;" value="📃 문의" onclick="showPopup9();">
<input type="button"  style="border: none;" value="🕺🏻관리자" onclick="showPopup10();">

</div>

</body>
</html>