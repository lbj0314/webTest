<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function go() {
		var mon = document.getElementById("mon");
		var op = "";
		for(var i = 1; i < 13; i++){
			op = op + "<option>"+ i +"</option>";
		}
		op = document.getElementById("mon").innerHTML;
		
		
	}
</script>
<style type="text/css">
</style>


</head>
<body>
	<p>
		<select id="mon">

		</select>
	</p>
	<p>
		<button onclick="go()">CLICK</button>
	</p>


</body>
</html>