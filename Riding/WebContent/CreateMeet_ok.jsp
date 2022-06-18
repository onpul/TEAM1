<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
	/* request객체에서 받아온 파라미터값 저장 */
	String nameMsg = request.getParameter("nameMsg");
	String datepicker = request.getParameter("datepicker");
	String datepicker2 = request.getParameter("datepicker2");
	String number = request.getParameter("number");
	String placeMsg = request.getParameter("placeMsg");
	String detailMsg = request.getParameter("detailMsg");
	String splace = request.getParameter("splace");
	String eplace = request.getParameter("eplace");
	String positionId = request.getParameter("positionId");
	
	/* out객체를 통해 응답 */
	out.println("모임명: " + nameMsg);
	out.println("시작날짜: " + datepicker);
%>
</body>
</html>





