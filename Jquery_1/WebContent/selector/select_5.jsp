<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style type="text/css">
.c1 {
	width: 300px;
	height: 300px;
}

.c2 {
	background-color: red;
}

.c3 {
	background-color: blue;
}

.c4 {
	border: 3px solid black;
}
</style>
</head>
<body>
	<div id="d1" class="c1 c2"></div>
	<div id="d2" class="c1 c3"></div>
	<div id="d3"></div>
	<button id="btn">CLICK</button>


	<script type="text/javascript">
		$('#btn').click(function() {
			$('#d3').addClass("c1 c2");
			//$('#d2').addClass("c4");
			$('#d1').removeClass("c2");
			$('#d2').toggleClass("c4");
		});	
		
		
	</script>

</body>
</html>