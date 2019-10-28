<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body>
	<h1>Delete Form</h1>
	<form action="./formDeleteResult.jsp" method="get">
		<input type="text" name="num" id="num"> <input type="button"
			value="Delete" id="btn">
	</form>

	<script type="text/javascript">
	var btn = document.getElementById("btn");
	var num = document.getElementById("num");
	
	btn.addEventListener("click",function() {
	if (num.value=="") {
		alert("지우실 데이터의 숫자를 입력하세요.")
	}else if(num.value!=null){
		window.open("./formDeleteResult.jsp","",
				"width = 600px, height = 300px, top = 200px, left = 300px")
	}
	});
	

</script>

</body>
</html>