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
<title>Friend</title>
<link rel="stylesheet" type="text/css" href="css/main.css">

<script type="text/javascript">
	
		function showPopup5() 
		{
			window.open("Friend_S_R.jsp", "친구", "width=1000, height=400, left=400, top=50"); 
		}
		function frienddelete()
		{
			alert("삭제하시겠습니까? 삭제구현은아직안했쥐만~");
		}

</script>
</head>


<body onload="window.resizeTo(1000,800)"> 

<div class="alert2">
<h1> 친구 목록 </h1>
</div>
<hr />

<div>
	<textarea class="frse" placeholder="친구 검색" ></textarea>
</div>
<button type="button" class="q" >🔍</button>

<div class="box2">
	<div class="fl">
	친구 목록 [ 4 / 100 ]<Br><Br>
	</div>
<input type="checkbox" />🚲🧢 홍길동(Hobuhohyeong) <br>
<input type="checkbox" />🚲🧢 빌게이츠(macrohard)  <br>
<input type="checkbox" />🚲🧢 스티브잡스(samsung)  <br>
<input type="checkbox" />🚲🧢임시완(mazeltov)	   <br>
</div>



<div class="clsBtn2">

	<input type="button" id="clsBtn" value="친구 요청 목록" onclick="showPopup5();" />	
	
	<input type="button" id="clsBtn" value="친구 삭제" onclick="frienddelete();" />		<!-- 친구삭제 알림  -->
</div>



</body>
</html>