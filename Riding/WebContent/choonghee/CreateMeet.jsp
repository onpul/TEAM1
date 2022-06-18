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
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<!-- jquery UI -->
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"
	integrity="sha256-6XMVI0zB8cRzfZjqKcD01PBsAy3FlDASrlC8SxCpInY=" 
	crossorigin="anonymous"></script>

<!-- jqueryUI css -->
<link rel="stylesheet" href="https://releases.jquery.com/git/ui/jquery-ui-git.css">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<link rel="stylesheet"  type="text/css" href="<%=cp%>/choonghee/CreateMeetCSS.css">

<script type="text/javascript">
	//라이딩 시작 일시
 	$(document).ready(function()
	{
		//alert("확인");
		
		$("#datepicker").datepicker(
		{
			dateFormat : "yy-mm-dd"
			, changeMonth : true
			, changeYear : true
		});
		
		$("#datepicker2").datepicker(
		{
			dateFormat : "yy-mm-dd"
			, changeMonth : true
			, changeYear : true
		});
		
		// 라이딩 스타일 최초 '제한없음' 선택으로 초기화
		$(".riding-style input[value='0']").prop('checked', 'checked');
		
		$("#riding_name").on("keydown", function()
		{
			if(Number($(this).val().length) == 20)
				alert("20자 내로 입력해주세요.");
		});
				
		
		// 경유지 추가 버튼 눌렀을 때
		$(".pointBtn button:eq(0)").on("click", function()
		{
			// 경유지 2 개 이상부터는 삭제 버튼 생성
			if($(".points").children("label").length >= 1)
				$(".pointBtn button:eq(1)").css("display", "");
			
			if($(".points").children("label").length < 5 )
			{
				var numIdx = $(".points").children("label").length + 1;
				
				var str = "<br>";
				str +=		'<label>경유지'+numIdx+' ';
				str +=			'<input type="text" class="txt" name="address'+numIdx+'"/> ';
				str +=			'<input type="text" class="txt" name="detail_address'+numIdx+'"/>';
				str +=			'<button type="button" class="searchMap" value="point">검색</button>';
				str +=		'</label>';
				 
				$(".points").append(str);
				
				$(".searchMap").on("click", function()
				{
					searchMap($(this).val());
				});	
			}	
		});
		
		$(".pointBtn button:eq(1)").on("click", function()
		{
			if($(".points").children("label").length > 1 )
			{
				$(".points").children("label:last-child").remove();
				$(".points").children("br:last-child").remove();
			}
				
			if($(".points").children().length < 2)
				$(".pointBtn button:eq(1)").css("display", "none");
				
		})
			
		$(".searchMap").on("click", function()
		{
			searchMap($(this).val());
		});	
	});
 		
	function searchMap(val)
	{
		window.open("KakaoSearchMap.jsp?openType="+val , "위치 찾기", "width=800");
	}
	
	function getAddr(openType, addr, lat, lng)
	{
		
	}
</script>
</head>
<body>
<div>
	<h3>다인 라이딩 모임 생성 폼입니다</h3>
    <hr>
</div>


<div class="container">
	<form action ="insertriding.action" method="post">
		<table class="table table-bordered">
			<tr>
				<th>모임 이름</th>
				<td>
					<input type="text" id="riding_name" name="riding_name" 
					maxlength="20" placeholder="20자 이내로 입력하세요"/>
				</td>
			</tr>
			<tr>
				<th>라이딩 기간</th>
				<td>
					<input type="text" id="datepicker" name="start_date"> 
					~ <input type="text" id="datepicker2" name="end_date">
				</td>
			</tr>
			<tr>
				<th>최대 인원수</th>
				<td>
					<select name="maximum" id="maximum">
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>모임 장소</th>
				<td>
					<span>
						<input type="text" name="meet_address"
						id="meet_address" placeholder="주소"/>
						<input type="text" name="meet_detail"
						id="meet_detail" placeholder="상세주소를 입력하세요"/>
						<button type="button" class="searchMap" value="meet">검색</button>
					</span>
				</td>
			</tr>
			<tr>
				<th>모임 출발 장소</th>
				<td>
					<input type="text" class="txt" name="start_address"
					id="start_address" placeholder="주소"/>
					<input type="text" class="txt" name="start_detail"
					id="start_detail" oninput="nameError(this)" placeholder="상세주소를 입력하세요"/>
					<button type="button" class="searchMap" value="start">검색</button>
				</td>
			</tr>
			<tr>
				<th>모임 종료 장소</th>
				<td>
					<input type="text" class="txt" name="end_address"
					id="end_address" placeholder="주소"/>
					<input type="text" class="txt" name="end_detail"
					id="end_detail" placeholder="상세주소를 입력하세요"/>
					<button type="button" class="searchMap" value="end">검색</button>
				</td>
			</tr>
			<tr>
				<th>경유지</th>
				<td>
					<div>
						<button type="button" onclick="searchList()">경유지 찾아보기</button>
					</div>
					<div>
						<jsp:include page="bicycle.jsp"></jsp:include>
					</div>
					<div class="ridingPoint">
						<span class="points">
							<label>경유지1
								<input type="text" class="txt" name="address1"/>
								<input type="text" class="txt" name="detail_address1"/>
								<button type="button" class="searchMap" value="point">검색</button>
							</label>
						</span>
						<span class="pointBtn">
							<button type="button">추가</button>
							<button type="button" style="display:none;">삭제</button>
						</span>		
					</div>	
				</td>
			</tr>
			<tr>
				<th>공지사항</th>
				<td>
					<textarea name="comments" cols="50" rows="5"></textarea>
				</td>
			</tr>
		</table>
		
		<br />
		
		<!-- 여기서부터는 라이딩 스타일을 지정하는 구간입니다 -->
		<h2>라이딩 스타일 지정</h2>
        <hr>
        
        <table class="table table-bordered riding-style">
        	<tr>
				<th>성별</th>
				<td>
					<label>
						<input type="radio" name="sex_p_id" value="0"/>제한없음
					</label>
					<label>
						<input type="radio" name="sex_p_id" value="1"/>남
					</label>
					<label>
						<input type="radio" name="sex_p_id" value="2" />여
					</label>
				</td>
			</tr>
			<tr>
				<th>연령 제한</th>
				<td>
					<label>
						<input type="radio" name="age_p_id"  value="0"/>제한없음
					</label>
					<label>
						<input type="radio" name="age_p_id" value="1" />10대
					</label>
					<label>
						<input type="radio" name="age_p_id" value="2" />20대
					</label>
					<label>
						<input type="radio" name="age_p_id" value="3" />30대
					</label>
					<label>
						<input type="radio" name="age_p_id" value="4" />40대
					</label>
					<label>
						<input type="radio" name="age_p_id" value="5" />50대
					</label>
					<label>
						<input type="radio" name="age_p_id" value="6" />60대 이상
					</label>
				</td>
			</tr>
			<tr>
				<th>속도</th>
				<td>
					<label>
						<input type="radio" name="speed_id" value="0"/>제한없음
					</label>
					<label>
						<input type="radio" name="speed_id" value="1"/>20미만
					</label>
					<label>
						<input type="radio" name="speed_id" value="2"/>20이상 24미만
					</label>
					<label>
						<input type="radio" name="speed_id" value="3"/>24이상
					</label>
				</td>
			</tr>
			<tr>
				<th>숙련도</th>
				<td>
					<label>
						<input type="radio" name="step_id" value="0" />제한없음
					</label>
					<label>
						<input type="radio" name="step_id" value="1" />1년 미만
					</label>
					<label>
						<input type="radio" name="step_id" value="2" />1~3년
					</label>
					<label>
						<input type="radio" name="step_id" value="3" />3~5년
					</label>
					<label>
						<input type="radio" name="step_id" value="4" />6년 이상
					</label>
				</td>
			</tr>
			<tr>
				<th>식사 여부</th>
				<td>
					<label>
						<input type="radio" name="eat_p_id" value="0" />제한없음
					</label>
					<label>
						<input type="radio" name="eat_p_id" value="1" />밥 안 먹고 달려요
					</label>
					<label>
						<input type="radio" name="eat_p_id" value="2" />밥 먹고 달려요
					</label>
				</td>
			</tr>
			<tr>
				<th>회식 여부</th>
				<td>
					<label>
						<input type="radio" name="dining_p_id" value="0" />제한없음
					</label>
					<label>
						<input type="radio" name="dining_p_id" value="1" />끝나고 회식 안 해요
					</label>
					<label>
						<input type="radio" name="dining_p_id" value="2" />끝나고 회식 해요
					</label>
				</td>
			</tr>
			<tr>
				<th>분위기</th>
				<td>
					<label>
						<input type="radio" name="mood_p_id" value="0"/>제한없음
					</label>
					<label>
						<input type="radio" name="mood_p_id" value="1"/>침묵이 좋아요
					</label>
					<label>
						<input type="radio" name="mood_p_id" value="2"/>친목이 좋아요
					</label>
				</td>
			</tr>
			<tr>
				<th>참여자 제한 등급</th>
				<td>
					<label>
						<input type="radio" name="e_grade_id" value="0" />제한없음
					</label>
					<label>
						<input type="radio" name="e_grade_id" value="1" />다이아전거
					</label>
					<label>
						<input type="radio" name="e_grade_id" value="2" />금전거
					</label>
					<label>
						<input type="radio" name="e_grade_id" value="3" />은전거
					</label>
					<label>
						<input type="radio" name="e_grade_id" value="4" />동전거
					</label>
					<label>
						<input type="radio" name="e_grade_id" value="5" />돌전거
					</label>
				</td>
			</tr>
        </table>
		<div>
			<hr />
			<input 	type="submit" value="모임생성하기">   
			<input type="reset"	value="취소하기">
		</div>
	</form>
</div>

</body>
</html>