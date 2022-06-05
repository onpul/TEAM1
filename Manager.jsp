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
<title>Manager.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<script type="text/javascript">
	
	

</script>
</head>

<body>
<div class="alert2">
<h1> 관리자 </h1>
</div>
<hr />

<div>
 &nbsp;&nbsp;<a href="Man_PlsAddFacility.jsp" class="hrf">생성&nbsp;&nbsp;요청&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> 
 &nbsp;&nbsp;<a href="Man_plsModFacility.jsp"  class="hrf">수정&nbsp;&nbsp;요청&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> 
 &nbsp;&nbsp;<a href="Man_plsDelFacility.jsp"  class="hrf">삭제&nbsp;&nbsp;요청&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
 &nbsp;&nbsp;<a href="#" class="hrf">신고&nbsp;&nbsp;발생&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
 &nbsp;&nbsp;<a href="#"  class="hrf">문의&nbsp;&nbsp;조회&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> <br /><hr />
 &nbsp;&nbsp;<a href="#" class="hrf">편의&nbsp;&nbsp;시설&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> 
 &nbsp;&nbsp;<a href="#" onclick="();" class="hrf">평가&nbsp;점수&nbsp;관리&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> 
 &nbsp;&nbsp;<a href="#" onclick="();" class="hrf">공헌도&nbsp;점수&nbsp;관리&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
 &nbsp;&nbsp;<a href="#" onclick="();" class="hrf">패널티&nbsp;관리&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> <br /><hr />
</div>

</body>
</html>