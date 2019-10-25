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
	height: 100px;
	background-color: red;
}

.c2 {
	width: 300px;
	height: 100px;
	background-color: blue;
}
</style>

</head>
<body>
	<div id="d1" title="test" class="c1">
		<input type="checkbox" checked="checked" id="ch1">
		<input type="checkbox" checked="checked" id="ch2">
	</div>
	<button id="btn">CLICK</button>
	<script type="text/javascript">
	$('#btn').click(function() {
		var t1= $('#d1').attr("title");
		var c1= $('#d1').attr("class");
		$('#d1').attr("class","c2");
		/* alert(t1);
		alert(c1);
		alert(ch1); */
		var ch1 = $('#ch1').attr("checked");
		var ch2 = $('#ch2').attr("checked");
		var ch3 = $('#ch1').prop("checked");
		var ch4 = $('#ch2').prop("checked");
		alert(ch3);
		alert($("#d1").prop("title"));
	});
	
	
	

</script>



</body>
</html>