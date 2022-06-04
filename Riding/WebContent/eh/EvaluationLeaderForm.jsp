<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EvaluationLeaderForm.jsp</title>
</head>
<body>
<!-- center에 위치 -->
<div>
	모임 평가하기
</div>

<!-- 다음줄 right에 위치 -->
<div>
	작성자 : <span>김빵빵</span>
</div>

<!-- 평가폼 -->
<div>
	<form>
		결석한 사람을 체크해 주세요.
		<label><input type="checkbox" name="사과1" value="사과1">사과1</label>
		<label><input type="checkbox" name="철수1" value="철수1">철수1</label>
		<label><input type="checkbox" name="바나나1" value="바나나1">바나나1</label>
		<label><input type="checkbox" name="영희1" value="영희1">영희1</label>
		
		<!-- 편의상 개행 태그 사용했음 -->
		<br />
		
		<!-- 결석자 / 본인은 제외. -->
		가장 친절한 사람
		<select>
			<option>없음</option>
			<option>사과1</option>
			<option>철수1</option>
			<option>바나나1</option>
			<option>영희1</option>
		</select>
		
		가장 불친절한 사람
		<select>
			<option>없음</option>
			<option>사과1</option>
			<option>철수1</option>
			<option>바나나1</option>
			<option>영희1</option>
		</select>
		
		<!-- 편의상 개행 태그 사용했음 -->
		<br />
		
		위험하게 라이딩한 사람
		<select>
			<option>없음</option>
			<option>사과1</option>
			<option>철수1</option>
			<option>바나나1</option>
			<option>영희1</option>
		</select>
		
		<!-- 편의상 개행 태그 사용했음 -->
		<br />
		
		완주하지 못한 사람
		<select>
			<option>없음</option>
			<option>사과1</option>
			<option>철수1</option>
			<option>바나나1</option>
			<option>영희1</option>
		</select>
		
		<!-- 모임의 속성이 숙련도 4~5이고 평속 20이상 
		     일 때만 활성화됨. -->
		실제 숙련도와 다른 사람
		<select>
			<option>없음</option>
			<option>사과1</option>
			<option>철수1</option>
			<option>바나나1</option>
			<option>영희1</option>
		</select>
		
		<!-- 편의상 개행 태그 사용했음 -->
		<br />
		
		<button>신고하기</button>
		
		<!-- 편의상 개행 태그 사용했음 -->
		<br />
		
		<button>제출</button>
		<button>닫기</button>
	</form>
</div>

</body>
</html>