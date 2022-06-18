<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%

	//document.getElementById("writer").value;
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맛집 지도 등록</title>


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


function regi()
{
   if(confirm("등록하시겠습니까?"))
   {
	   alert("등록되었습니다.")
   }
   else
   {
      alert("취소되었습니다.");
   }
}




function go() 
{
	location.href = "StoreMap.jsp";
}



</script>



<script type="text/javascript">

	//등록 버튼 클릭 시
	$(function()
	{
		$(".processBtn").on("click", function()
		{	
			//alert( document.getElementById('writer').value ); // O
			//alert( document.getElementById('wDate').value ); // O
			//alert( document.getElementById('addr').value ); // O
			//alert( document.getElementById('subaddr').value ); // O
			
			document.getElementById("writer").value
			document.getElementById("wDate").value
			document.getElementById("addr").value
			document.getElementById("subaddr").value
			
			$("#writer").val(writer);
			$("wDate").val(wDate);
			$("#addr").val(addr);
			$("#subaddr").val(subaddr);
			
			$("#storeForm").submit();
			
			ajaxInsert($(this).val());
			
			window.close();
			
		});
		
		//닫기, 취소 버튼 클릭 시
		$("#cancelBtn").on("click", function()
		{
			window.close();
		});
				

	});

	
	
	


</script>

















</head>
<body>


<div>

	<h3>맛집 등록</h3>
	
	<p>등록하시고자하는 맛집을 찾아주세요😊<p>
	<form action="" id="storeForm" method="post">
	<p><input type="text" id="writer" name="writer" placeholder="작성자"/><input type="text" id="wDate" placeholder="작성날짜"/></p>
	
	
	<jsp:include page="KakaoApi1.jsp"></jsp:include>
	
	<br /><br />
	<p>많은 관심 감사드립니다💖👍💖👍</p>
	
	

	<input type="text" id="addr" name="addr" class="control" placeholder="맛집명 입력"/>
	<input type="text" id="subaddr" name="subaddr" class="control" placeholder="맛집 상세주소 입력"/>
	<!-- <input type="button" value="등록하기" class="control" onclick="search()"> -->
	<input type="button" value="등록하기" class="btn btn-success processBtn" onclick="regi()"/>
	<input type="button" value="취소하기" class="btn btn-cancle processBtn"/>
	<span><button type="button" onclick="go()">홈으로</button></span>



	</form>
</div>




</body>
</html>