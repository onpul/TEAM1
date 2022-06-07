<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맛집 조회 목록 리스트</title>
<link rel="stylesheet" href="css/main.css" type="text/css">



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
<!-- 게시물 검색 폼  -->
<form action="">
	<table border="1" width="60%">
	<tr>
	<td align="left">
	<select name="searchField" id="">
		<option value="title">제목</option>
		<option value="content">내용</option>
		<option value="name">작성자</option>
	</select>
	<input type="text" name="searchWord"/>
	<input type="submit" value="검색하기"/>
	
	<select name="RangeKey" class="RangeField">
          <option value="최신순">최신순</option>
          <option value="조회순">조회순</option>
    </select>
	
	</td>
	</tr>	
	</table>
</form>

<br /><br />

<!-- 게시물 목록 -->
	<table border="1" width="60%">
	<tr align=left>
	<th width="10%">번호</th>
	<th width="*">제목</th>
	<th width="15%">작성자</th>
	<th width="15%">작성일</th>
	<th width="10%">조회수</th>
	</tr>

</table>


<br /><br />

<div>
	<span><button type="button" onclick="">처음으로</button></span>
	<span><button type="button" onclick="">1</button></span>
	<span><button type="button" onclick="">2</button></span>
	<span><button type="button" onclick="">3</button></span>
	<span><button type="button" onclick="">4</button></span>
	<span><button type="button" onclick="">5</button></span>
	<span><button type="button" onclick="">마지막으로</button></span>
</div>

</body>
</html>