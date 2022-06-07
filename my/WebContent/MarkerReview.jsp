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
<title>맛집 후기 수정(마커를 눌렀을 때) 폼</title>

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

</script>
</head>
<body>


<div>
	<h3>검색 결과가 있을 때</h3>

	<button>가게명검색</button>
	<button>지도에서검색</button>
	
	<br /><br />

	<input type="text" class="txt"/>
	<button>검색</button>
	
	<br /><br />

	<input type="text" class="txt" />
	
	<br /><br />
	<button>위치보기</button>
	<button>선택</button>

	<br /><br />
	
	<input type="button" value="수정하기" class="btn"/>
	<input type="button" value="취소" class="btn"/>
   
</div>



<br /><br /><br /><br />


<div>
	<h3>검색 결과가 없을 때</h3>

	<button>가게명검색</button>
	<button>지도에서검색</button>
	
	<br /><br />

	<p>검색 결과 없음</p>

	
	<button>지도에 맛집 등록하기</button>
	
	<br /><br />
	
	<input type="button" value="수정하기" class="btn"/>
	<input type="button" value="취소" class="btn"/>
   
</div>



</body>
</html>

