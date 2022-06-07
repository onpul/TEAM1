<!-- 2. 알림 | 알림조회  -->

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
<title>notice_win.jsp</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


</head>

<!-- 밑에 이 코드는 창 사이즈 조절하는 거에요 .. 
창 띄우는 식으로 하는게 좋을거같아서 -->
<body onload="window.resizeTo(1000,700)"> 
<div class="alert2">
<h1> 알림 </h1>

</div>
<hr />

<!-- 이 밑에 a를 main.css에 코드 이것저것 넣었더니 
  클래스가 따로 적용이 안되서
넣어봤습니다.. 없으면 읽은 알림삭제 | 전체삭제가 하늘로 승천해버려요

  -->
<div style="position: absolute; left: 20px; top: 600px;">
	
	
		<a href="#" role="button" class="func" onclick="">읽은 알림 삭제</a>   
		
		<a href="#" role="button" class="func" onclick="">전체 삭제</a>
	
</div>	


<!-- 이 코드는 알림창 개별 삭제하는 버튼이에요..
  -->
<div class="container" >
<div style="width: 700px; height: 400px; overflow:scroll;">
<table border="1" class="table">
	
			<tr>
     	 			<th>알림</th>
     	 			<th>개별 삭제</th>
    		</tr>
			<tr>
      	
     		 	<td> 
     		 		<a href="#">알림1<br>초대</a>  
     
     		 	</td>
     		 	
     			<td>
       				 <button class="btn  pull-right" type="button" >x</button>
      			</td>
   			 </tr>
   			 
   			 <tr>
      	
     		 	<td> 
     		 		<a href="#">알림2<br>초대</a>  
     
     		 	</td>
     		 	
     			<td>
       				 <button class="btn  pull-right" type="button" >x</button>
      			</td>
   			 </tr>
   	
</table>
</div>

	<!-- 하나당 1번 알림 - 1번 버튼 연결 시켜서
	지우게하는 방법을 생각해봤습니다.  -->
		
		
</div>	

<!-- 알림 삭제 문구입니다.. 회색 글자 클래스를 적용했습니다. -->
<div class="alrdel">
	※ 알림은 최대 20개 까지 쌓이고 오래된 순서대로 자동삭제 됩니다.
</div>

<!-- 닫기가 없는 이유 .. 창으로 띄우니까 상단바 x를 눌러 
      창을 끄면 되기 때문. 불편하면 추가하면 될것같습니다. -->



</body>


</html>