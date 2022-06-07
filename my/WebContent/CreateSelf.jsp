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
<title>모임 생성</title>

<!-- 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<link rel="stylesheet"  type="text/css" href="<%=cp%>/css/main.css">


</head>
<body>

<div>
		<h3>1인 라이딩 모임 생성 폼입니다</h3>
        <hr>
			<form action ="" name="meet" >  
			
					<p>모임 유형</p>
					
						<label for=""><input type="radio" name="radio" id="r1" value="다인"/>다인</label>
						
						<label for=""><input type="radio" name="radio" id="r2" value="1인"/>1인</label>
						
						<label for=""><input type="checkbox" name="check" id="c1" value="번개"/>번개</label>
				
			<br /><br />
				
		
					<p>모임 이름</p>
				
						<input type="text" class="txt" name="name"/>
				
					
						<span class="errMsg" id="nameMsg">20자 이내로 입력하세요</span>

			<br /><br />	
				
				
				<tr>
					<th>시작 일시</th>
						<td>
						<select name="startyear" id="startyear">
							<option value="1">2022년</option>
							<option value="2">2021년</option>
						</select>
						</td>
						<td>
						<select name="startmonth" id="startmonth">
							<option value="1">6월</option>
							<option value="2">7월</option>
						</select>
						</td>
						<td>
						<select name="startdate" id="startdate">
							<option value="1">20일</option>
							<option value="2">21일</option>
						</select>
						</td>
				</tr>
				
			<br /><br />
			
	
						
				<tr>
					<th>종료 일시</th>
						<td>
						<select name="endyear" id="endyear">
							<option value="1">2022년</option>
							<option value="2">2021년</option>
						</select>
						</td>
						<td>
						<select name="endmonth" id="endmonth">
							<option value="1">6월</option>
							<option value="2">7월</option>
						</select>
						</td>
						<td>
						<select name="enddate" id="enddate">
							<option value="1">20일</option>
							<option value="2">21일</option>
						</select>
						</td>
				</tr>
						
			<br /><br />
				
			
					<p>최대 인원수</p>
						<select name="number" id="number">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
						</select>
		    <br /><br />
				
	
					<p>모임 출발 장소</p>
			
						<input type="text" class="txt" name="place"/>
				
						<button type="button">검색</button>
						
			<br /><br />
			
					<p>모임 종료 장소</p>
				
						<input type="text" class="txt" name="place"/>
			
						<button type="button">검색</button>
			
			<br /><br />	
				
					<p>경유지</p>
						<select name="positionId" id="positionId">
							<option value="1">일반 주소</option>
							<option value="2">화장실</option>
							<option value="3">음수대</option>
							<option value="4">맛집</option>
						</select>
			<br /><br />
			
					<input type="text" class="txt" name="place"/>
						<button type="button">검색</button>
						
			<p>경로 표시하기</p>
				<textarea name="" id="" cols="50" rows="10"></textarea>
			<br /><br />
			
			<table>
              
				<tr>
                   
					<td colspan="2" style="text-align: center">
                        <HR>
						<input 	type="submit" value="확인하기">   
						<input type="reset"	value="취소하기">
					</td>
				</tr>	

			</table>
		</form>
		
	</div>










</body>
</html>