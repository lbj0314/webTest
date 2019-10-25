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
#d1{
	width: 200px;
	height: 200px;
	background-color: yellow;

}

</style>

</head>
<body>
	<div id="d1">
		<h1>Delete</h1>
	</div>
	<button id="r1">Remove</button>
	<button id="r2">Empty</button>
	
	<script type="text/javascript">
		$('#r1').click(function() {
			$('#d1').remove();
		});
		$('#r2').click(function() {
			$('#d1').empty();
		});
	</script>
	
	
</body>
</html>