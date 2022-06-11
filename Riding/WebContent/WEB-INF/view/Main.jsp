<!--
Main.jsp 
메인페이지(최초 접속 페이지)
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
<title>Main.jsp</title>
<!-- 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">

	// 접속한 회원의 패널티 적용 여부 확인	
	$(function()
	{
		$("#openRidingBtn").click(function()
		{
			//alert("확인");
			
			// 패널티 적용 여부 확인해서 패널티 있으면 경고창, 없으면 라이딩 생성 요청
			$.ajax(
			{
				type:"POST"
				, url:"penaltycheck.action"
				, data:"회원코드"
				, success:function(data)
				{
					if (data == 0)
					{
						location.href = "ridingForm.action";
					}
					else if (data > 0) 
					{
						alert("패널티가 적용 중이므로 모임을 생성할 수 없습니다.");
					}
				}
				, error:function(e)
				{
					alert(e.responseText);
				}
			});
		}); 
	});
	
	// 달력 구현 ---------------------------------------------------------------------------
	var today = new Date();
	// alert(today); 
	// Sat Jun 11 2022 20:54:35 GMT+0900 (한국 표준시)
	
	var date = new Date();
	
	// 문서 로딩과 동시에 달력 그리기
	$(document).ready(function()
	{
		drawCalendar();
	});
	
	// 이전달
	function beforeMonth()
	{
		today = new Date(today.getFullYear(), today.getMonth()-1, today.getDate());
		//alert(today);
		// Wed May 11 2022 00:00:00 GMT+0900 (한국 표준시)
		
		drawCalendar(); // 캘린더 그리기
	}
	
	// 다음달
	function nextMonth()
	{
		today = new Date(today.getFullYear(), today.getMonth()+1, today.getDate());
		//alert(today);
		// Mon Jul 11 2022 00:00:00 GMT+0900 (한국 표준시)
		
		drawCalendar(); // 캘린더 그리기
	}
	
	// 오늘
	function thisMonth()
	{
		today = new Date();
		
		drawCalendar(); // 캘린더 그리기
	}
	
	// 캘린더 그리기
	function drawCalendar()
	{
		var firstDate = new Date(today.getFullYear(), today.getMonth(), 1); // 현재 달의 첫 번째 날짜 
		var lastDate = new Date(today.getFullYear(), today.getMonth()+1, 0); // 현재 달의 마지막 날짜
		
		var calTable = document.getElementById("calendar"); // 달력을 그릴 테이블
		var yearAndMonth = document.getElementById("yearAndMonth"); // ~년 ~월을 쓸 div
		
		// 선택한 년도와 월 출력
		yearAndMonth.innerHTML = today.getFullYear() + "년 " + (today.getMonth()+1) + "월";
		
		//alert(calTable.rows.length);
		
		//달력 그리기 전 초기화
    	while(calTable.rows.length > 2) 
    	{
    		calTable.deleteRow(-1);
        }
		
		// 1일의 요일 구하기
		var yoil = firstDate.getDay(); // 인덱스 형태로 출력 
		
		// 새로운 행 추가
		var newRow = calTable.insertRow();
		
		var newCell = null;
		
		var tmp = 0; // 일수 증가 값
			
		// 1일이 되기 전까지 공백 칸 생성
		for (var i = 0; i < yoil; i++)
		{
			// 새로운 셀 추가
			newCell = newRow.insertCell();
			
			tmp = tmp + 1;
			
			if (tmp%7==0)
			{
				newRow = calTable.insertRow();
			}
		}
		
		//alert("lastDate.getDate() = " + lastDate.getDate());
		//alert("tmp = " + tmp);
		
		// 달력 출력
		for (var i = 1; i <= lastDate.getDate(); i++)
		{			
			newCell = newRow.insertCell();
			
			var str = "";
			
			str += "<div>" + i + "</div>";
			var day = i;          	
			str += "<div id='" + day + "'></div>"; 
			newCell.innerHTML = str;
			
			//alert("tmp = " + tmp);
			if (tmp%7==0)
			{
				newRow = calTable.insertRow();
			}
		}	
		
		// 공백 제거
		for (var i = 0; i < 35; i++)
		{
			if (tmp % 7 == 0)
			{
				return;
			}
			
			newCell = newRow.insertCell();
			
			tmp = tmp + 1;
		}
		
	}
	
</script>
<style type="text/css">
	.calendar-box
	{
		height: 500px;
	}
	.map-box
	{
		background-color: orange;
		height: 466px;
	}
	.btn-box
	{
		text-align: right;
	}
	.select-box
	{
		width: 70%;
	}
	td
	{
		width: 20px;
	}
</style>
</head>
<body>
<div class="row">
	<!-- 달력 들어갈 div -->
	<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 ">
		<div class="calendar-box">
			<table align="center" id="calendar" class="table table-striped" border="1">
				<tr>
					<th colspan="2"><a href="javascript:beforeMonth()" id="before">이전</a></th>
					<th colspan="3"><div id="yearAndMonth"></div></th>
					<th colspan="1"><a href="javascript:nextMonth()" id="next">다음</a></th>
					<th colspan="1"><a href="javascript:thisMonth()">오늘</a></th>
				</tr>
				<tr id="calendarTr">
					<td style="color: red;">일</td>
					<td>월</td>
					<td>화</td>
					<td>수</td>
					<td>목</td>
					<td>금</td>
					<td style="color: blue;">토</td>
				</tr>
			</table>
		</div>
	</div>
	
	<!-- 지도 들어갈 div -->
	<!-- 회원일 경우 적용 -->
	<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
		<div class="select-box">
			<select name="" id="" class="form-control">
				<option value="">맛집 보기</option>
				<option value="">편의시설 보기</option>
			</select>
		</div>
		
		<div class="map-box">
			<!-- 지도 들어갈 div -->
		</div>
	</div>
	
	<!-- 비회원일 경우 적용 -->
	<!-- 
	<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
		<p>편의시설 보기</p>
		<div class="map-box">
			지도 들어갈 div
		</div>
	</div> 
	-->
</div>

<!-- 하단 버튼(회원/관리자) / 비회원일 경우 적용 안 함 -->
<!-- 회원일 경우 적용 -->
<div class="row btn-box"> 
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
		<input type="button" class="btn btn-default" value="모임 생성하기" id="openRidingBtn"/>
	</div>
</div>

<!-- 관리자일 경우 적용 -->
<!-- 
<div class="row btn-box"> 
	<input type="button" class="btn btn-default" value="관리자 페이지로 이동"/>
</div>
-->
</body>
</html>