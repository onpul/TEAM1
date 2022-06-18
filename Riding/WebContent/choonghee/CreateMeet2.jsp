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


<style type="text/css">

/* div {
	border: 4px dotted #5f9ea0;
	width: 1000px;
	height: 1600px;
	background-color: AliceBlue; 
	padding: 100px;
	margin: 100px auto;
}
 */

/* 
form{
    width: 900px;
	height: 920px;
}
 */

input{ 	padding: 7px;
		margin: 15px auto; 
	
	}
 

input[type=submit], input[type=button],input[type=reset] {
	padding: 7px 15px;
	margin: 7px 10px;
	background: #6495ed; 
	color: white;
	border: none;
	cursor: pointer;
	width:35%;
}
input[type=submit]:hover{
	background:#ff7f50;
}
input[type=button]:hover{
	background:#8b008b;
}
input[type=reset]:hover{
	background:#dc143c;
}


a{
	text-decoration: none;
	color: CadetBlue;
}
hr{
	border: 1px dotted #5f9ea0;
}
a{
  color:w#5f9ea0;
}
a>mark{
	background-color: #5f9ea0;
	opacity: 50%;

}
/* ul{
    list-style-type: none;
}
h3{
    text-align: center;
    color:#F59B7A;
    font-size: 29PX;
} */


</style>

<%-- 
<link rel="stylesheet"  type="text/css" href="<%=cp%>/css/main.css">

<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> --%>


<link rel="stylesheet"  type="text/css" href="<%=cp%>/css/main.css">
<link rel="stylesheet"  type="text/css" href="<%=cp%>/css/jquery-ui.css">


<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp%>/js/jquery-ui.js"></script>






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
	});
 
 	
 	
 	//라이딩 종료 일시
 	$(document).ready(function()
 			{
 				//alert("확인");
 				
 				$("#datepicker2").datepicker(
 				{
 					dateFormat : "yy-mm-dd"
 					, changeMonth : true
 					, changeYear : true
 				});
 			});
</script>
 
 
 
 
<script type="text/javascript">

	function formCheck()
	{
		//alert("hi");
		
		
		var name = document.getElementById("nameMsg");
		var mem = document.getElementById("member");
		var start = document.getElementById("splace");
		var end = document.getElementById("eplace");
		
		return true;
	
		
	}


</script>





<script type="text/javascript">
	
	// 모임명이 20자 이상이면 에러 발생
	function nameError(object)
	{
		if (object.value.length > 20)
		{
			document.getElementById("nameMsg").style.color = "red";
		}
		else
			document.getElementById("nameMsg").style.color = "black";
	}
	
	// 장소를 검색하는 화면이 새로 뜨게 됨
	function searchCheck()       //
	{
		//alert("hi");
		
		window.open("kakaoMap.jsp" , "test", "width=800, height=800");
		
	}
	
	// 경유지를 검색하는 화면이 새로 뜨게 됨
	function searchList()
	{
		window.open("listMap.jsp", "test1", "width=800, height=800");
	}
	
	
	
	
</script>	
	

</head>
<body>

<div>
		<h3>다인 라이딩 모임 생성 폼입니다</h3>
        <hr>
			<form action ="" method="post" onsubmit="return formCheck()">
			
					<!-- <p>번개</p>
						<label><input type="checkbox" name="check" id="check" value="번개"/>번개</label> -->
						
						
					<p>생성자</p>
					<input type="text" class="txt" name="maker" id="maker" />	
						

					<p>모임 이름</p>
				
						<input type="text" class="txt" maxlength="20" name="nameMsg"
						id="nameMsg" oninput="nameError(this)" placeholder="20자 이내로 입력하세요"/>
	    	<br /><br />	
			
			
				 <p>라이딩기간을 선택해주세요~</p>
       				 <input type="text" id="datepicker" name="datepicker"> ~ <input type="text" id="datepicker2" name="datepicker2">
					 <!-- 오라클 기간 설정 참고 기간 넘기지 않게 & 6박7일 -->
			<br /><br />
			

			
					<p>최대 인원수</p>
						<select name="number" id="number" onchange="selectBoxNumber(this.value);">
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
				
						<input type="text" class="txt" name="placeMsg"
						id="placeMsg" oninput="nameError(this)" placeholder="대표주소를 입력하세요"/>
						<input type="text" class="txt" name="detailMsg"
						id="detailMsg" oninput="nameError(this)" placeholder="상세주소를 입력하세요"/>
						<button type="button" onclick="searchCheck()">검색</button>
						
						
			<br /><br />
					<p>모임 출발 장소</p>  
					<input type="text" class="txt" name="splace"
						id="splace" oninput="nameError(this)" placeholder="대표주소를 입력하세요"/>
						<input type="text" class="txt" name="sdetail"
						id="sdetail" oninput="nameError(this)" placeholder="상세주소를 입력하세요"/>
						<button type="button" onclick="searchCheck()">검색</button>
					
			
			<br /><br />

			
					<p>모임 종료 장소</p>
					<input type="text" class="txt" name="eplace"
						id="eplace" oninput="nameError(this)" placeholder="대표주소를 입력하세요"/>
						<input type="text" class="txt" name="edetail"
						id="edetail" oninput="nameError(this)" placeholder="상세주소를 입력하세요"/>
						<button type="button" onclick="searchCheck()">검색</button>
					
			
			<br /><br />	
				
					<p>경유지</p>
					<button type="button" onclick="searchList()">경유지 찾아보기</button>
					<p>경유지는 최대 5대까지 선택이 가능합니다</p>
						<select name="position1" id="position1">
							<option value="1">일반 주소</option>
							<option value="2">화장실</option>
							<option value="3">음수대</option>
							<option value="4">맛집</option>
						</select>
						<input type="text" class="txt" name="place1"/>
			<br /><br />
						<select name="position2" id="position2">
							<option value="1">일반 주소</option>
							<option value="2">화장실</option>
							<option value="3">음수대</option>
							<option value="4">맛집</option>
						</select>
						<input type="text" class="txt" name="place2"/>
			<br /><br />
						<select name="position3" id="position3">
							<option value="1">일반 주소</option>
							<option value="2">화장실</option>
							<option value="3">음수대</option>
							<option value="4">맛집</option>
						</select>
						<input type="text" class="txt" name="place3"/>
			<br /><br />
						<select name="position4" id="position4">
							<option value="1">일반 주소</option>
							<option value="2">화장실</option>
							<option value="3">음수대</option>
							<option value="4">맛집</option>
						</select>
						<input type="text" class="txt" name="place4"/>
			<br /><br />
						<select name="position5" id="position5">
							<option value="1">일반 주소</option>
							<option value="2">화장실</option>
							<option value="3">음수대</option>
							<option value="4">맛집</option>
						</select>
						<input type="text" class="txt" name="place5"/>
			<br /><br />
					
	
						
			<p>경로 표시하기</p>
			<jsp:include page="bicycle.jsp"></jsp:include>
			<br /><br />
			
			<!-- <table>
              
				<tr>
                   
					<td colspan="2" style="text-align: center">
                        <HR>
						<input 	type="submit" value="등록하기" id="sendBtn"/>   
						<input type="reset"	value="취소하기">
					
						
						
						
					</td>
				</tr>	

			</table> -->
			
	

		
		
		
	<br /><br /><br /><br />
	<br /><br /><br /><br />
	<br /><br /><br /><br />

	
	<!-- 여기서부터는 라이딩 스타일을 지정하는 구간입니다 -->
	<h2>라이딩 스타일 지정</h2>
        <hr>
				<p>성별</p>
					<label>
						<input type="radio" name="gender" id="nolimit" value="제한없음" />
						제한없음
					</label>
					<label>
						<input type="radio" name="gender1" id="same" value="남" />
						남
					</label>
					<label>
						<input type="radio" name="gender2" id="same" value="여" />
						여
					</label>
			<br /><br />
			
			
				<p>연령대</p>
					<label>
						<input type="radio" name="gender" id="every" value="제한없음" />
						제한없음
					</label>
					<label>
						<input type="radio" name="gender1" id="ten" value="10대" />
						10대
					</label>
					<label>
						<input type="radio" name="gender2" id="twenty" value="20대" />
						20대
					</label>
					<label>
						<input type="radio" name="gender3" id="thirty" value="30대" />
						30대
					</label>
					<label>
						<input type="radio" name="gender4" id="forty" value="40대" />
						40대
					</label>
					<label>
						<input type="radio" name="gender5" id="fifty" value="50대" />
						50대
					</label>
					<label>
						<input type="radio" name="gender6" id="sixty" value="60대" />
						60대 이상
					</label>
			<br /><br />
			

				<p>속도</p>
					<label>
						<input type="radio" name="speed" id="nolimit" value="제한없음" />
						제한없음
					</label>
					<label>
						<input type="radio" name="speed1" id="first" value="20미만" />
						20미만
					</label>
					<label>
						<input type="radio" name="speed2" id="second" value="20이상" />
						20이상 24미만
					</label>
					<label>
						<input type="radio" name="speed3" id="third" value="24이상" />
						24이상
					</label>
			<br /><br />
		
				<p>숙련도</p>
					<label>
						<input type="radio" name="skill" id="nolimit" value="제한없음" />
						제한없음
					</label>
					<label>
						<input type="radio" name="skill1" id="one" value="1년미만" />
						1년 미만
					</label>
					<label>
						<input type="radio" name="skill2" id="three" value="1~3년" />
						1~3년
					</label>
					<label>
						<input type="radio" name="skill3" id="five" value="3~5년" />
						3~5년
					</label>
					<label>
						<input type="radio" name="skill4" id="six" value="6년이상" />
						6년 이상
					</label>
			<br /><br />


				<p>식사 여부</p>
					<label>
						<input type="radio" name="meal" id="nolimit" value="제한없음" />
						제한없음
					</label>
					<label>
						<input type="radio" name="meal1" id="nomeal" value="식사있음" />
						밥 안 먹고 달려요
					</label>
					<label>
						<input type="radio" name="meal2" id="yesmeal" value="식사없음" />
						밥 먹고 달려요
					</label>
			<br /><br />
			

				<p>회식 여부</p>
					<label>
						<input type="radio" name="get" id="nolimit" value="제한없음" />
						제한없음
					</label>
					<label>
						<input type="radio" name="get1" id="noget" value="회식있음" />
						끝나고 회식 안 해요
					</label>
					<label>
						<input type="radio" name="get2" id="yesget" value="회식없음" />
						끝나고 회식 해요
					</label>
			<br /><br />

				<p>분위기</p>
					<label>
						<input type="radio" name="quiet" id="nolimit" value="제한없음" />
						제한없음
					</label>
					<label>
						<input type="radio" name="quiet1" id="yesquiet" value="침묵" />
						침묵이 좋아요
					</label>
					<label>
						<input type="radio" name="quiet2" id="noquiet" value="친목" />
						친목이 좋아요
					</label>
			<br /><br />
			

				<p>참여자 제한 등급</p>
					<label>
						<input type="radio" name="bike" id="nolimit" value="제한없음" />
						제한없음
					</label>
					<label>
						<input type="radio" name="bike1" id="dia" value="다이아" />
						다이아전거
					</label>
					<label>
						<input type="radio" name="bike2" id="gold" value="금" />
						금전거
					</label>
					<label>
						<input type="radio" name="bike3" id="gold" value="금" />
						은전거
					</label>
					<label>
						<input type="radio" name="bike4" id="gold" value="금" />
						동전거
					</label>
					<label>
						<input type="radio" name="bike5" id="gold" value="금" />
						돌전거
					</label>
			<br /><br />
			
			
				<p>공지사항</p>
				<textarea name="" id="" cols="50" rows="5"></textarea>
			<br /><br />
			
				<tr>
					<td colspan="2" style="text-align: center">
                        <HR>
						<input 	type="submit" value="모임생성하기">   
						<input type="reset"	value="취소하기">
					</td>
				</tr>	
			
			
		</form>
	</div>


 
<div>
<h2>${param.maker }</h2>
<h2>${param.nameMsg }</h2>
<h2>${param.datepicker }</h2>
<h2>${param.datepicker2 }</h2>
<h2>${param.placeMsg }</h2>
<h2>${param.detailMsg }</h2>
<h2>${param.splace }</h2>
<h2>${param.sdetail }</h2>
<h2>${param.eplace }</h2>
<h2>${param.edetail }</h2>
<h2>${param.position1 }</h2>
<h2>${param.place1 }</h2>
<h2>${param.position2 }</h2>
<h2>${param.place2 }</h2>
<h2>${param.position3 }</h2>
<h2>${param.place3}</h2>
<h2>${param.position4 }</h2>
<h2>${param.place4 }</h2>
<h2>${param.position5 }</h2>
<h2>${param.place5 }</h2>

</div>





</body>
</html>