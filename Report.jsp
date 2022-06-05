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
<title>Report.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<script type="text/javascript">
	
	function showPopup()
	{
		alert("제출되었습니다.");
	}

</script>
</head>
<body onload="window.resizeTo(1000,800)"> 

<div class="alert2" >
<h2> 신고하기 </h2>
</div>
<hr />
<div class="sel1">
	종  류&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="resport">
    <option value="">종류 선택</option>
    <option value="수신 쪽지">수신 쪽지</option>
    <option value="불건전한 모임 이름">불건전한 모임 이름</option>
    <option value="맛집 후기 신고">맛집 후기 신고</option>
    <option value="부적절한 닉네임">부적절한 닉네임</option>
    <option value="부적절한 모임 참여자 신고">부적절한 모임 참여자 신고</option>
</select><br /><br />

작성자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  class="txtt"/><br /><br />
대  상&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" class="txtt"/><br /><br />
사  유&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" class="txtt2"/><br /><br />
</div>

<div class="clsBtn4">

	<input type="button" id="clsBtn" value="제출하기" onclick="showPopup();" />	
	
	<input type="button" id="clsBtn" value="취소하기" onclick="window.close()" />		<!-- 친구삭제 알림  -->
</div>


</body>
</html>