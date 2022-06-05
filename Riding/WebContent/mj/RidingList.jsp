<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RidingList.jsp</title>
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
<div>
	<div>모임명</div>
	<input type="text" />
	<input type="button" value="찾기"/>
</div>
<div>
	<ul>
		<li> 연령대
		<label><input type="checkbox" name="age" value="전체">전체</label>
		<label><input type="checkbox" name="age" value="10대">10대</label>
		<label><input type="checkbox" name="age" value="20대">20대</label>
		<label><input type="checkbox" name="age" value="30대">30대</label>
		<label><input type="checkbox" name="age" value="40대">40대</label>
		<label><input type="checkbox" name="age" value="50대">50대</label>
		<label><input type="checkbox" name="age" value="60대 이상"> 60대 이상</label>
		</li>
		<li> 성별
		<label><input type="checkbox" name="gender" value="전체"/>전체</label>
		<label><input type="checkbox" name="gender" value="남성"/>남성</label>
		<label><input type="checkbox" name="gender" value="여성"/>여성</label>
		</li>
		<li> 속도
		<label><input type="checkbox" name="speed" value="전체"/>전체</label>
		<label><input type="checkbox" name="speed" value="20미만"/>20미만</label>
		<label><input type="checkbox" name="speed" value="20이상 24미만"/>20이상 24미만</label>
		<label><input type="checkbox" name="speed" value="24이상"/>24이상</label>
		</li>
		<li> 숙련도
		<label><input type="checkbox" name="step" value="전체"/>전체</label>
		<label><input type="checkbox" name="step" value="1년 미만"/>1년 미만</label>
		<label><input type="checkbox" name="step" value="1~3년"/>1~3년</label>
		<label><input type="checkbox" name="step" value="3~5년"/>3~5년</label>
		<label><input type="checkbox" name="step" value="6년 이상"/>6년 이상</label>
		</li>
		<li> 회식 여부
		<label><input type="checkbox" name="dinning" value="전체"/>전체</label>
		<label><input type="checkbox" name="dinning" value="끝나고 회식해요"/>끝나고 회식해요</label>
		<label><input type="checkbox" name="dinning" value="끝나고 회식 안 해요"/>끝나고 회식 안 해요</label>
		</li>
		<li> 식사 여부
		<label><input type="checkbox" name="eat" value="전체"/>전체</label>
		<label><input type="checkbox" name="eat" value="밥 먹고 달려요"/>밥 먹고 달려요</label>
		<label><input type="checkbox" name="eat" value="밥 안 먹고 달려요"/>밥 안 먹고 달려요</label>
		</li>
		<li> 분위기
		<label><input type="checkbox" name="mood" value="전체"/>전체</label> 
		<label><input type="checkbox" name="mood" value="침묵이 좋아요"/>침묵이 좋아요</label> 
		<label><input type="checkbox" name="mood" value="친목이 좋아요"/>친목이 좋아요</label> 
		</li>
		<li> 제한 등급
		<label><input type="checkbox" name="grade" value="전체"/>전체</label> 
		<label><input type="checkbox" name="grade" value="다이아전거"/>다이아전거</label> 
		<label><input type="checkbox" name="grade" value="금전거"/>금전거</label> 
		<label><input type="checkbox" name="grade" value="은전거"/>은전거</label> 
		<label><input type="checkbox" name="grade" value="동전거"/>동전거</label> 
		<label><input type="checkbox" name="grade" value="돌전거"/>돌전거</label> 
		</li>
		<li><input type="button" value="나의 라이딩 스타일 적용"/></li>
	</ul>
</div>
<div>
	<table>
		<tr>
			<th>모임명</th>
			<th>최대</th>
			<th>참여가능</th>
			<th>기간</th>
			<th>참석가능여부</th>
		</tr>
		<tr>
			<td>인천 피플</td>
			<td>9</td>
			<td>2</td>
			<td>2022.06.20 12:00 ~ 2022.06.20 16:00</td>
			<td>참석 가능
				<input type="button" value="신고"/>
			</td>
		</tr>
		<tr>
			<td>인천 피플</td>
			<td>9</td>
			<td>2</td>
			<td>2022.06.20 12:00 ~ 2022.06.20 16:00</td>
			<td>참석 가능
				<input type="button" value="신고"/>
			</td>
		</tr>
		<tr>
			<td>인천 피플</td>
			<td>9</td>
			<td>2</td>
			<td>2022.06.20 12:00 ~ 2022.06.20 16:00</td>
			<td>참석 가능
				<input type="button" value="신고"/>
			</td>
		</tr>
		<tr>
			<td>인천 피플</td>
			<td>9</td>
			<td>2</td>
			<td>2022.06.20 12:00 ~ 2022.06.20 16:00</td>
			<td>참석 가능
				<input type="button" value="신고"/>
			</td>
		</tr>
		<tr>
			<td>인천 피플</td>
			<td>9</td>
			<td>2</td>
			<td>2022.06.20 12:00 ~ 2022.06.20 16:00</td>
			<td>참석 가능
				<input type="button" value="신고"/>
			</td>
		</tr>
	</table>
	<input type="button" value="라이딩 모임 만들기"/>
</div>
</body>
</html>