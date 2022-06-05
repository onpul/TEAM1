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
<title>MPDF</title>
<link rel="stylesheet" type="text/css" href="css/main.css">

<script type="text/javascript">
	function showPopup1()
	{
		alert("승인되었습니다.");	
		window.close();
	}
	function showPopup2()
	{
		alert("반려되었습니다.");	
		window.close();
	}


</script>
</head>
<body onload="window.resizeTo(1000,800)"> 
<div style="text-align:center;">
[ 지도 첨부 ]
</div>

<div class="box2">
<div style="text-align:center;">
[ 수정 전 ]
</div>
작성자 : 배고픔<br>
작성 일자 : 2022년 05월 23일<br>
위치 : 서울시 xx구 xx로 xx로 xx11<br>
이름: xx만두<br>
<div style="text-align:center;">
[ 수정 후 ]
</div>
작성자 : 배고픔<br>
작성 일자 : 2022년 05월 27일<br>
위치 : 서울시 xx구 xx로 xx로 xx11<br>
이름: xx만두와 왕만둣국<br>
</div>
<div class="clsBtn2">

	<input type="button" id="clsBtn" value="승인" onclick="showPopup1();" />	
	
	<input type="button" id="clsBtn" value="닫기" onclick="window.close();" />	
	
	<input type="button" id="clsBtn" value="반려" onclick="showPopup2();" />	
</div>
</body>
</html>