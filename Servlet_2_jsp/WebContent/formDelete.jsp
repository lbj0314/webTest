
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>
	<h1>Delete Form</h1>
	<form action="./formDeleteResult.jsp" method="get">
		<input type="text" name="num" id="num"> 
		<button>CLICK</button>
	</form>

	<!-- <script type="text/javascript">
	$("#btn").click(function(){
		if (num.value=="") {
		alert("지우실 데이터의 숫자를 입력하세요.")
	}else if(num.value!=null){
		
		window.open("./formDeleteResult.jsp","",
				"width = 600px, height = 300px, top = 200px, left = 300px")
	}
	});
	
</script> -->
</body>
</html>