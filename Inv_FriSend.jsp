<!-- 5. 초대 상세 내용 -->
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
<title>Inv_FriSend.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript">
	
function showPopup4() 
	{
		window.open("Invitation_Create.jsp", "초대장", "width=1000, height=400, left=400, top=50"); 
	}
	

</script>
</head>
<body>

<body onload="window.resizeTo(1000,800)"> 

<div class="alert2">
<h1> 모임 초대 생성 폼 </h1>
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

<div class="alrdel1">
	※친구 한 명당 1일 3회까지 초대할 수 있습니다.
</div>

<div class="clsBtn2">

	<input type="button" id="clsBtn" value="초대" onclick="showPopup4();" />	
	
	<input type="button" id="clsBtn" value="취소" onclick="window.close();" />		<!-- 임시로 꺼짐. 취소 누르면 모임대기실로 -->
</div>



</body>
</html>