<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<h1>Parameter Test Page</h1>
	<a href="./parameterResult1.jsp?name=momo&age=24">GO1</a>
	<button id="btn">CLICK</button>
	
	<form action="./parameterResult1.jsp" method="get">
		<input type="text" name="name">
		<input type="number" name="age">
		<input type="submit" value="CLICK">
		
	</form>
	
	<form id="frm" action="./parameterResult1.jsp" method="post">
		<input type="text" name="name" id="v1">
		<input type="number" name="age" id="v2">
		<input type="button" id="btn2" value="CLICK">
		
	</form>
	
<script type="text/javascript">
	$("#btn2").click(function () {
		var check = confirm("확인 또는 취소");

		if (check) {
		$("#frm").submit();
			location.href = "./parameterResult1.jsp?name"+$("#v1").val()+"&age="+$("#v2").val();
			
		}else{
			alert("취소");
		}
		
		
	});
	
	
	$("#btn").click(function() {
		location.href = "./parameterResult1.jsp?name=momo&age=24";
	});
	

</script>

</body>
</html>