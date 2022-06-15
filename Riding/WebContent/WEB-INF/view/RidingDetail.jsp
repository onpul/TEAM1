<!--
RidingDetail.jsp 
모임 상세보기 페이지
메인 페이지 > 모임 생성하기 > 모임 상세보기
모임 리스트 > 모임 상세보기

참여하기 누르면 라이딩 대기실로 이동 처리
-->
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RidingDetail.jsp</title>
<!-- 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function()
	{
		//alert("확인");
	
		$("#goList").click(function()
		{
			//alert("확인");
			location.href="/Riding/ridinglist.action";
		});
		
		$("#attendBtn").click(function()
		{
			//alert("확인");
			
			$.ajax(
			{
				type:"POST"
				, url:"gendercheck.action"
				, data:"회원코드"
				, success:function(data)
				{
					if (genderOption == null || data == genderOption)
					{
						location.href = "라이딩대기실.action"
					}
					else if (data != genderOption) 
					{
						switch (genderOption)
						{
							case "male" : genderOption = "남성"; break;
							case "female" : genderOption = "여성"; break;
						}
						alert("해당 모임은 " + genderOption + "만 참여할 수 있습니다.");
					}
				}
				, error:function(e)
				{
					alert(e.responseText);
				}
			});
			
		});
	});
</script>
<style type="text/css">
	.memberBox
	{
		border: 1px solid lightgray;
		border-radius: 30px;
		padding: 20px;
		list-style: none;
		display: inline-flex;
		flex-direction: row;
	    flex-wrap: nowrap;
	    align-content: stretch;
	    justify-content: space-between;
	    align-items: center;
	}
	li
	{
		display: block;
	}
	img
	{
		width: 80px;
	}
	.container
	{
		text-align: center;
	}
	.map-box
	{
		margin-left: auto;
		margin-right: auto;
		text-align: center;
		width: 500px;
		height: 400px;
		background-color: lightgray;
	}
	.property > p
	{
		margin-left: auto;
		margin-right: auto;
		width: 200px;
		border: 1px solid gray;
		border-radius: 30px;
	}
</style>
</head>
<body>
<div>
	<c:import url="Header.jsp"></c:import>
</div>
<div class="container">
	<div>
		<h1>20대 라이더 여기여기 붙어라</h1>
		<div class="property">
			<p>참석가능</p>
			<p>여성</p>
			<p>끝나고 회식해요</p>
		</div>
	</div>

	<div>
		<h3>경로 보기</h3>
		<div class="map-box">지도 들어갈 div</div>
	</div>
	
	<div>
		<h3>모임 정보</h3>
		<table class="table">
			<tr>
				<td>모임 시작 일시</td>
				<td>2022.05.23 10:00</td>
			</tr>
			<tr>
				<td>모임 종료 일시</td>
				<td>2022.05.23 16:00</td>
			</tr>
			<tr>
				<td>최대 인원수</td>
				<td>6명</td>
			</tr>
		</table>
	</div>
	
	<div>
		<!-- 비회원은 블러 처리 후 로그인 페이지로 이동 버튼 -->
		<h3>멤버 정보</h3>
		<!-- 사용자 프로필 -->
		<div>
			<ul class="memberBox">
				<li><img src="https://bigxdata.io/common/img/default_profile.png" alt="" class="img-circle"/></li>
				<li>
					<ul>
						<li>방장 달리는 고양이 🚲🧢</li>
						<li>야옹. 난 오늘도 달린다. <br>함께 달리자.</li>
					</ul>
				</li>
				<li>
					<ul>
						<li>여성</li>
						<!-- 친구관계일 때는 친구 버튼 보이지 않게 구현 -->
						<li><input type="button" class="btn btn-default" value="친구 추가"/></li>
					</ul>
				</li>
			</ul>
		</div>
		<div>
			<ul class="memberBox">
				<li><img src="https://bigxdata.io/common/img/default_profile.png" alt="" class="img-circle"/></li>
				<li>
					<ul>
						<li>방장 달리는 고양이 🚲🧢</li>
						<li>야옹. 난 오늘도 달린다. <br>함께 달리자.</li>
					</ul>
				</li>
				<li>
					<ul>
						<li>여성</li>
						<!-- 친구관계일 때는 친구 버튼 보이지 않게 구현 -->
						<li><input type="button" class="btn btn-default" value="친구 추가"/></li>
					</ul>
				</li>
			</ul>
		</div>
		<div>
			<ul class="memberBox">
				<li><img src="https://bigxdata.io/common/img/default_profile.png" alt="" class="img-circle"/></li>
				<li>
					<ul>
						<li>방장 달리는 고양이 🚲🧢</li>
						<li>야옹. 난 오늘도 달린다. <br>함께 달리자.</li>
					</ul>
				</li>
				<li>
					<ul>
						<li>여성</li>
						<!-- 친구관계일 때는 친구 버튼 보이지 않게 구현 -->
						<li><input type="button" class="btn btn-default" value="친구 추가"/></li>
					</ul>
				</li>
			</ul>
		</div>
		<div>
			<input type="button" class="btn btn-default" value="목록으로" id="goList"/> 
			<input type="button" class="btn btn-default" value="참여하기" id="attendBtn"/>
		</div>
	</div>
</div>
</body>
</html>