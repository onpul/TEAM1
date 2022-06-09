<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LetterSendForm.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript">
	$(function()
	{
		$("#searchBtn").click(function()
		{
			window.open("LetterSendForm2.jsp","","width=400px,height=400px");
		})
		$("#submitBtn").click(function()
		{
			// alert()뜨고 기존 LetterList.jsp로 돌아가는 버튼
			
			//쪽지보내기 Controller로 이동.
			
			alert("전송이 완료되었습니다.");
			location.replace("LetterList.jsp");
		});
		
		$("#notSaveBtn").click(function()
		{
			var result = confirm("작성하신 내용은 저장되지 않습니다. \n 정말로 취소하시겠습니까?");
			
			if(result)
				location.replace("LetterList.jsp");
		});
		
	});
</script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<style type="text/css">
	textarea {
    width: 100%;
    height: 6.25em;
    border: none;
    resize: none;
  }
	
</style>
</head>
<body>
<!-- 쪽지 생성 폼 -->
<!-- LetterSendForm.jsp -->

<!-- main div -->
<div>
	<form>
		<div>
			<span>받는 사람(ID)</span>
			<input type="text" id="searchUser" 
			placeholder="검색할 친구 닉네임 혹은 ID">
		</div>
		
		<div>
			<button type="button" id="searchBtn">검색</button>
		</div>
	
		<br />
	
		<div>
			<textarea class="form-control" rows="5">내용입력칸.</textarea>
		</div>
		
		<br />
		
		<div>
			<button type="button" class="btn btn-primary" id="submitBtn">전송</button>
		</div>
		
		<div>
			<button type="button" class="btn btn-default" id="notSaveBtn">취소</button>
		</div>
	</form>
</div><!-- main div close -->
</body>
</html>