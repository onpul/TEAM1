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
<title>Join Room</title>



<!-- 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<link rel="stylesheet"  type="text/css" href="<%=cp%>/css/main.css">
<script type="text/javascript">

	/* 누르면 내 프로필이 뜨도록 합니다  */
	function alertTest()
	{
		//alert("hi");
		
		window.open("MyProfile.jsp", "test", "width=500, height=300");
	}

	/* 누르면 상대(친구일경우) 프로필이 뜨도록 합니다  */
	function alertTest1()
	{
		//alert("hi");
		
		window.open("YourProfile.jsp", "test", "width=500, height=300");
	}
	
	/* 누르면 상대(친구가 아닐경우) 프로필이 뜨도록 합니다  */
	function alertTest2()
	{
		//alert("hi");
		
		window.open("OtherProfile.jsp", "test", "width=500, height=300");
	}




</script>







</head>
<body>


<div>
<h2>대기실 화면(참여자)</h2>
        <hr>
			<form action ="" name="room" >  
				모임명<input type="text" id="room1" value ="즐겁게 달려요" class="txt"/>
					<input type="button" value="코스" class="btn"/>
					
					
				<br /><br />
				방장
				<input type="button" value="방장정보" class="btn" onclick="alertTest1()"/>
				
				<br /><br />
				
				<br />
				참여자1(나)
				<input type="button" value="내프로필" class="btn" onclick="alertTest()"/>
				<button>확정하기</button>
				<button>방나가기</button>
				
				<br />
				참여자2
				<input type="button" value="타프로필" class="btn" onclick="alertTest1()"/>
				
				<br />
				참여자3
				<input type="button" value="타프로필" class="btn" onclick="alertTest2()"/>
				
				<br />
				참여자4
				<input type="button" value="타프로필" class="btn" onclick="alertTest2()"/>
					
					
					
					
				
						
					
					
					
			<br /><br />
			
		
			
			
		</form>
</div>






</body>
</html>