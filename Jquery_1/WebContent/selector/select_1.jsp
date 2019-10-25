<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
/* 	$(document).ready(function(){
		
		
	}); */
	
$(function(){

	
	$("#btn").click(function() {
		alert("test");
		
	});
	
	$(".btn1").click(function() {
		alert("test2");
	});
	
	
});

</script>
</head>
<body>
	<input type="text" id="d1" class="c1" value="test">
	<div id="d2">
		<input type="text">
	</div>

	<button id="btn">CLICK</button>
	<button class="btn1">CLICK</button>
	<button class="btn1">CLICK</button>
	<button class="btn1">CLICK</button>
	<button class="btn1">CLICK</button>


</body>
</html>