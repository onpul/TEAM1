<!--
Header.jsp 
헤더페이지(모든 페이지에 적용할 헤더)
-->
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header.jsp</title>
<!-- 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">PRIDE</a>
      <!--
      로고 이미지로 대체할 예정  
      <a class="navbar-brand" href="#">
       <img alt="logo" src="...">
      </a>
      -->
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav">
        	<li><a href="#">라이딩 모임 <span class="sr-only">(current)</span></a></li>
        	<li><a href="#">맛집 후기</a></li>
        	<li><a href="#">지도</a></li>
      	</ul>
		<ul class="nav navbar-nav navbar-right">
			<!-- 알림, 쪽지는 회원일 경우에만 적용 -->
	   		<li>
	   			<a href="#">알림<span class="badge"> 12</span></a>
	   		</li>
	   		<li>
	   			<a href="#">쪽지<span class="badge"> 4</span></a>
	   		</li>
	   		<li class="dropdown">
	     		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">프로필사진 <span class="caret"></span></a>
				<ul class="dropdown-menu" role="menu">
			       <li><a href="#">마이페이지</a></li>
			       <li><a href="#">로그아웃</a></li>
			       <!-- 
			       비회원 적용 메뉴
			       <li><a href="#">로그인</a></li>
			       <li><a href="#">회원가입</a></li> 
			       -->
				</ul>
        	</li>
		</ul>
		</div><!-- /.navbar-collapse -->
	</div><!-- /.container-fluid -->
</nav>
</body>
</html>