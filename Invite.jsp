<!-- 3. 초대 | 초대장 조회 -->
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
<title>Invite.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>



</head>

<!-- 이것 또한 창 사이즈 조절하는 것입니다 ..  -->
<body onload="window.resizeTo(1000,700)"> 
<div class="alert2" >
<h1> 초대장 </h1>

</div>
<hr />

<!-- 해당 초대장에 링크를 걸어서 연결시키는거에요
초대 내용 상세보기를 연결시켜놨습니다.
근데 내용을 추가하면 X 버튼이 옮겨가네요 그래서 div 로 잡은걸 table 로 바꿔봤습니다 ....  -->
<div class="container" >
<div style="width: 700px; height: 400px; ">
<table border="1" class="table">
	
			<tr>
     	 			<th>초대장</th>
     	 			<th>개별 삭제</th>
    		</tr>
			<tr>
      	
     		 	<td> 
     		 		<a href="Invitation_Detailed.jsp">초대cfsdfxcvxcvcxgdgds장1<br>dsklfsldhfsdhfk</a>  
     
     		 	</td>
     		 	
     			<td>
       				 <button class="btn  pull-right" type="button" >x</button>
      			</td>
   			 </tr>
   			 <tr>
      	
     		 	<td> 
     		 		<a href="Invitation_Detailed.jsp">초대cfsdfxcvxcvcxgdgds장2<br>dsklfsldhfsdhfk</a>  
     
     		 	</td>
     		 	
     			<td>
       				 <button class="btn pull-right" type="button" >x</button>
      			</td>
   			 </tr>
   			 <tr>
      	
     		 	<td> 
     		 		<a href="Invitation_Detailed.jsp">초대cfsdfxcvxcvcxgdgds장3<br>dsklfsldhfsdhfk</a>  
     
     		 	</td>
     		 	
     			<td>
       				 <button class="btn pull-right" type="button" >x</button>
      			</td>
   			 </tr>
   			 <tr>
      	
     		 	<td> 
     		 		<a href="Invitation_Detailed.jsp">초대cfsdfxcvxcvcxgdgds장4<br>dsklfsldhfsdhfk</a>  
     
     		 	</td>
     		 	
     			<td>
       				 <button class="btn  pull-right" type="button" >x</button>
      			</td>
   			 </tr>
   			 <tr>
      	
     		 	<td> 
     		 		<a href="Invitation_Detailed.jsp">초대cfsdfxcvxcvcxgdgds장5<br>dsklfsldhfsdhfk</a>  
     
     		 	</td>
     		 	
     			<td>
       				 <button class="btn pull-right" type="button" >x</button>
      			</td>
   			 </tr>
   			 <tr>
      	
     		 	<td> 
     		 		<a href="Invitation_Detailed.jsp">초대cfsdfxcvxcvcxgdgds장6<br>dsklfsldhfsdhfk</a>  
     
     		 	</td>
     		 	
     			<td>
       				 <button class="btn pull-right" type="button" >x</button>
      			</td>
   			 </tr>
   			 <tr>
      	
     		 	<td> 
     		 		<a href="Invitation_Detailed.jsp">초대cfsdfxcvxcvcxgdgds장7<br>dsklfsldhfsdhfk</a>  
     
     		 	</td>
     		 	
     			<td>
       				 <button class="btn pull-right" type="button" >x</button>
      			</td>
   			 </tr>
   			 <tr>
      	
     		 	<td> 
     		 		<a href="Invitation_Detailed.jsp">초대cfsdfxcvxcvcxgdgds장8<br>dsklfsldhfsdhfk</a>  
     
     		 	</td>
     		 	
     			<td>
       				 <button class="btn pull-right" type="button" >x</button>
      			</td>
   			 </tr>
   			 <tr>
      	
     		 	<td> 
     		 		<a href="Invitation_Detailed.jsp">초대cfsdfxcvxcvcxgdgds장9<br>dsklfsldhfsdhfk</a>  
     
     		 	</td>
     		 	
     			<td>
       				 <button class="btn pull-right" type="button" >x</button>
      			</td>
   			 </tr>
   			 <tr>
      	
     		 	<td> 
     		 		<a href="Invitation_Detailed.jsp">초대cfsdfxcvxcvcxgdgds장10<br>dsklfsldhfsdhfk</a>  
     
     		 	</td>
     		 	
     			<td>
       				 <button class="btn pull-right" type="button" >x</button>
      			</td>
   			 </tr>
   			 <tr>
      	
     		 	<td> 
     		 		<a href="Invitation_Detailed.jsp">초대cfsdfxcvxcvcxgdgds장11<br>dsklfsldhfsdhfk</a>  
     
     		 	</td>
     		 	
     			<td>
       				 <button class="btn pull-right" type="button" >x</button>
      			</td>
   			 </tr>
   			 <tr>
      	
     		 	<td> 
     		 		<a href="Invitation_Detailed.jsp">초대cfsdfxcvxcvcxgdgds장12<br>dsklfsldhfsdhfk</a>  
     
     		 	</td>
     		 	
     			<td>
       				 <button class="btn  pull-right" type="button" >x</button>
      			</td>
   			 </tr>
   			 <tr>
      	
     		 	<td> 
     		 		<a href="Invitation_Detailed.jsp">초대cfsdfxcvxcvcxgdgds장13<br>dsklfsldhfsdhfk</a>  
     
     		 	</td>
     		 	
     			<td>
       				 <button class="btn pull-right" type="button" >x</button>
      			</td>
   			 </tr>
   			 <tr>
      	
     		 	<td> 
     		 		<a href="Invitation_Detailed.jsp">초대cfsdfxcvxcvcxgdgds장14<br>dsklfsldhfsdhfk</a>  
     
     		 	</td>
     		 	
     			<td>
       				 <button class="btn pull-right" type="button" >x</button>
      			</td>
   			 </tr>
   			 <tr>
      	
     		 	<td> 
     		 		<a href="Invitation_Detailed.jsp">초대cfsdfxcvxcvcxgdgds장15<br>dsklfsldhfsdhfk</a>  
     
     		 	</td>
     		 	
     			<td>
       				 <button class="btn pull-right" type="button" >x</button>
      			</td>
   			 </tr>
   			 <tr>
      	
     		 	<td> 
     		 		<a href="Invitation_Detailed.jsp">초대cfsdfxcvxcvcxgdgds장16<br>dsklfsldhfsdhfk</a>  
     
     		 	</td>
     		 	
     			<td>
       				 <button class="btn pull-right" type="button" >x</button>
      			</td>
   			 </tr>
   			 <tr>
      	
     		 	<td> 
     		 		<a href="Invitation_Detailed.jsp">초대cfsdfxcvxcvcxgdgds장17<br>dsklfsldhfsdhfk</a>  
     
     		 	</td>
     		 	
     			<td>
       				 <button class="btn pull-right" type="button" >x</button>
      			</td>
   			 </tr>
   			 <tr>
      	
     		 	<td> 
     		 		<a href="Invitation_Detailed.jsp">초대cfsdfxcvxcvcxgdgds장18<br>dsklfsldhfsdhfk</a>  
     
     		 	</td>
     		 	
     			<td>
       				 <button class="btn pull-right" type="button" >x</button>
      			</td>
   			 </tr>
   			 <tr>
      	
     		 	<td> 
     		 		<a href="Invitation_Detailed.jsp">초대cfsdfxcvxcvcxgdgds장19<br>dsklfsldhfsdhfk</a>  
     
     		 	</td>
     		 	
     			<td>
       				 <button class="btn pull-right" type="button" >x</button>
      			</td>
   			 </tr>
   			 <tr>
      	
     		 	<td> 
     		 		<a href="Invitation_Detailed.jsp">초대cfsdfxcvxcvcxgdgds장20<br>dsklfsldhfsdhfk</a>  
     
     		 	</td>
     		 	
     			<td>
       				 <button class="btn pull-right" type="button" >x</button>
      			</td>
   			 </tr>
			
			

	
</table>
</div>
</div>
	
	
		
			
<!-- 이것도 알림이랑 똑같이 20개 이상 쌓이면 삭제되게 하는게
좋을것같아요 -->
<div class="alrdel">
	※ 초대장은 최대 20개 까지 쌓이고 오래된 순서대로 자동삭제 됩니다.
</div>




</body>


</html>