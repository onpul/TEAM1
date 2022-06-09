<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JQTest07.html</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	// 1.
	/* 
	$(function()
	{
		
	});
	// */
	
	
	// 2. 
	$(document).ready(function()
	{
		// change
		/* 
		$("#allCheck").change(function()
		{
			//테스트
			alert("change");
		});
		// */
		
		
		//click
		$("#allCheck").click(function()
		{
			//테스트
			//alert("click");
			
			// 1. attr
			//alert( $(this).attr("checked"));
			//--==>> undefined : 정의되지 않았다. 이러한 속성값은 정의되지 않았다. 
			//                   (체크 / 체크해제 모두 undefined 가 뜸.)
			
			//-----------------------------------------------------
			// 2. prop
			//alert( $(this).prop("checked"));
			//--==>> prop 도 속성인데 jquery에서 checkbox는 prop로 제어됨. (true / false)로 반환.
			
			// 3. js처럼
			//alert( this.checked);
			//--==>> 얘도 true / false 반환!
			
			// 4. is(:속성값) : 속성명을 지정하지 않고 checked가 있는지 없는지 판별하는 함수
			//alert( $(this).is(":checked") );
			//--==>> true / false 반환
			
			
			//$("#check1").prop({checked:true});
			/* for (var i=1; i<=5; i++)
			{
				$("#check"+i).prop({checked:true});
			} */
			
			/* if ($(this).is("checked") == false)
			{
				for (var i=1; i<=5; i++)
				{
					$("#check"+i).prop({checked:true});
				}
			} */
			
			
			
			
			
			
			
			//alert("모두선택 확인 : " + $(this).is(":checked") );
			
			
			//dms가 한거
			/*
			if ($(this).is(":checked") == true)
			{
				
				for (var i=1; i<=5; i++)
				{
					//$("#check"+i).prop({checked:true});
					$("#check"+i).prop("checked",true);		//→ 이게 맞음 .. ㅎㅎ 위에껀 왜 되는거지....
				}
				
				//$("div input:checkbox").prop("checked", true);
			}
			
			if ($(this).is(":checked") == false)
			{
				//alert("왜안돼 ㅅㅂ");
				
				for (var i=1; i<=5; i++)
				{
					//$("#check"+i).removeProp("checked");
					//$("#check"+i).prop({checked:false});
					$("#check"+i).prop("checked",false);	//→ 이게 맞음 .. ㅎㅎ 위에껀 왜 되는거지....
				}
				
				//$("div input:checkbox").prop("checked", false);
			}
			*/
			
			
			//---------------------------------------------------
			 /* 
			if ($(this).change(function()
			{
				//alert("해제됨?");
				for (var i=1; i<=5; i++)
				{
					$("#check"+i).prop({checked:false});
				} 
				
				if ($(this).is("checked") == false)
				{
					for (var i=1; i<=5; i++)
					{
						$("#check"+i).prop({checked:true});
					}
				}
				else
				{
					//alert("해제좀 ㅎㅎ");
					for (var i=1; i<=5; i++)
					{
						$("#check"+i).prop({checked:false});
					}
					
				}
				 
				
			}));
			 
			 */
			 
			//-- 수업
			//   jQuery와 친해지는 법 : 선택자 공부하기.
			// 방법 1.
			//$("div > input:checkbox").prop("checked",this.checked);
			 
			 
			// 방법 2. 
			// 『$(선택자).children()』
			$("#test").children().prop("checked",this.checked);
			
			
			
			
			
			
			
			
			
			
			
			
			
		});
	});
</script>
<style type="text/css"></style>
</head>
<body>

<label for="allCheck">
	<input type="checkbox" id="allCheck" />
	<span style="font-weight: bold;">모두 선택</span>
</label>
<br /><br />
<div id="test">
	<input type="checkbox" id="check1"><label for="check1">바나나</label> <br />
	<input type="checkbox" id="check2"><label for="check2">딸기</label> <br />
	<input type="checkbox" id="check3"><label for="check3">복숭아</label> <br />
	<input type="checkbox" id="check4"><label for="check4">수박</label> <br />
	<input type="checkbox" id="check5"><label for="check5">멜론</label> <br />
</div>

</body>
</html>