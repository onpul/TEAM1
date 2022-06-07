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
<title>모임 수정</title>


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
		<h3>모임 수정하는 폼입니다</h3>
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
				
							
					<p>모임 장소</p>
				
						<input type="text" class="txt" name="place"/>
				
						<button type="button">검색</button>
					
						<span class="errMsg" id="nameMsg">상세 주소를 제외한 대표 주소를 입력하세요</span>
			
			<br /><br />
				
				
		
					<p>모임 시작 상세 장소</p>
				
						<input type="text" class="txt" name="detail"/>

						<span class="errMsg" id="nameMsg">상세 주소를 입력해주세요</span>
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
					
			<br /><br />	
						
				<p>경로 표시하기</p>
				<textarea name="" id="" cols="50" rows="10"></textarea>
			<br /><br />
				
					<button type="button">경로 초기화</button>	
						
						
			
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
		
		
		
		
		
		
		
		<h2>라이딩 스타일 지정</h2>
        <hr>
			<form action ="" name="style" >
				<p>성별</p>
					<label>
						<input type="radio" name="gender" id="nolimit" value="제한없음" />
						제한없음
					</label>
					<label>
						<input type="radio" name="gender" id="same" value="같은성별" />
						나와 같은 성별
					</label>
			<br /><br />
			
			
				<p>연령대</p>
					<label>
						<input type="radio" name="gender" id="every" value="제한없음" />
						제한없음
					</label>
					<label>
						<input type="radio" name="gender" id="ten" value="10대" />
						10대
					</label>
					<label>
						<input type="radio" name="gender" id="twenty" value="20대" />
						20대
					</label>
					<label>
						<input type="radio" name="gender" id="thirty" value="30대" />
						30대
					</label>
					<label>
						<input type="radio" name="gender" id="forty" value="40대" />
						40대
					</label>
					<label>
						<input type="radio" name="gender" id="fifty" value="50대" />
						50대
					</label>
					<label>
						<input type="radio" name="gender" id="sixty" value="60대" />
						60대 이상
					</label>
			<br /><br />
			

				<p>속도</p>
					<label>
						<input type="radio" name="speed" id="nolimit" value="제한없음" />
						제한없음
					</label>
					<label>
						<input type="radio" name="speed" id="first" value="20미만" />
						20미만
					</label>
					<label>
						<input type="radio" name="speed" id="second" value="20이상" />
						20이상 24미만
					</label>
					<label>
						<input type="radio" name="speed" id="third" value="24이상" />
						24이상
					</label>
			<br /><br />
		
				<p>숙련도</p>
					<label>
						<input type="radio" name="skill" id="nolimit" value="제한없음" />
						제한없음
					</label>
					<label>
						<input type="radio" name="skill" id="one" value="1년미만" />
						1년 미만
					</label>
					<label>
						<input type="radio" name="skill" id="three" value="1~3년" />
						1~3년
					</label>
					<label>
						<input type="radio" name="skill" id="five" value="3~5년" />
						3~5년
					</label>
					<label>
						<input type="radio" name="skill" id="six" value="6년이상" />
						6년 이상
					</label>
			<br /><br />


				<p>식사 여부</p>
					<label>
						<input type="radio" name="meal" id="nolimit" value="제한없음" />
						제한없음
					</label>
					<label>
						<input type="radio" name="meal" id="nomeal" value="식사있음" />
						밥 안 먹고 달려요
					</label>
					<label>
						<input type="radio" name="meal" id="yesmeal" value="식사없음" />
						밥 먹고 달려요
					</label>
			<br /><br />
			

				<p>회식 여부</p>
					<label>
						<input type="radio" name="get" id="nolimit" value="제한없음" />
						제한없음
					</label>
					<label>
						<input type="radio" name="get" id="noget" value="회식있음" />
						끝나고 회식 안 해요
					</label>
					<label>
						<input type="radio" name="get" id="yesget" value="회식없음" />
						끝나고 회식 해요
					</label>
			<br /><br />

				<p>분위기</p>
					<label>
						<input type="radio" name="quiet" id="nolimit" value="제한없음" />
						제한없음
					</label>
					<label>
						<input type="radio" name="quiet" id="yesquiet" value="침묵" />
						침묵이 좋아요
					</label>
					<label>
						<input type="radio" name="quiet" id="noquiet" value="친목" />
						친목이 좋아요
					</label>
			<br /><br />
			

				<p>참여자 제한 등급</p>
					<label>
						<input type="radio" name="bike" id="nolimit" value="제한없음" />
						제한없음
					</label>
					<label>
						<input type="radio" name="bike" id="dia" value="다이아" />
						다이아전거
					</label>
					<label>
						<input type="radio" name="bike" id="gold" value="금" />
						금전거
					</label>
					<label>
						<input type="radio" name="bike" id="gold" value="금" />
						은전거
					</label>
					<label>
						<input type="radio" name="bike" id="gold" value="금" />
						동전거
					</label>
					<label>
						<input type="radio" name="bike" id="gold" value="금" />
						돌전거
					</label>
			<br /><br />
			
			
				<p>공지사항</p>
				<textarea name="" id="" cols="50" rows="10"></textarea>
			<br /><br />
			
				<tr>
					<td colspan="2" style="text-align: center">
                        <HR>
						<input 	type="submit" value="모임수정하기">   
						<input type="reset"	value="취소하기">
					</td>
				</tr>	
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
		</form>
	</div>










</body>
</html>